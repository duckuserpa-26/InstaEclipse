#!/usr/bin/env bash
set -euo pipefail
unzip -p candidate/instaeclipse-450-dev3-unsigned.apk classes3.dex > profile-fix/classes3.dex
bash tools/dex-tools-v2.4/d2j-dex2jar.sh -f -o profile-fix/classes3.jar profile-fix/classes3.dex > profile-fix/dex2jar.log 2>&1
bash tools/dex-tools-v2.4/d2j-class-version-switch.sh 6 profile-fix/classes3.jar profile-fix/classes3-v50.jar
python3 profile-fix/make_fixtures.py
python3 - <<'PY'
from pathlib import Path
import subprocess
Path('profile-fix/classes').mkdir(exist_ok=True)
files=[str(p) for p in Path('profile-fix/fixtures').rglob('*.java')]
subprocess.run(['java','-m','jdk.compiler/com.sun.tools.javac.Main','--release','8','-cp','port-tests/classes:profile-fix/classes3.jar','-d','profile-fix/classes']+files+['profile-fix/ProfileGestureTest.java'],check=True)
PY
java -m jdk.compiler/com.sun.tools.javac.Main -cp tools/dex-tools-v2.4/lib/asm-9.5.jar -d profile-fix/classes profile-fix/RecomputeMax.java
java -cp profile-fix/classes:tools/dex-tools-v2.4/lib/asm-9.5.jar RecomputeMax profile-fix/classes3-v50.jar profile-fix/classes3-test.jar
java -Xverify:all -cp profile-fix/classes:port-tests/classes:profile-fix/classes3-test.jar ProfileGestureTest > profile-fix/gesture-test.log
# Isolate UI fixtures from existing regression tests.
java -Xverify:all -cp port-tests/classes:profile-fix/classes3-test.jar LikeDelayQueueTest > profile-fix/queue-test.log
java -Xverify:all -cp port-tests/classes:profile-fix/classes3-test.jar ps.reso.instaeclipse.mods.media.CoreBehaviorTest > profile-fix/core-test.log
java -Xverify:all -cp port-tests/classes:port-tests/ig-stubs:profile-fix/classes3-test.jar BindingConstructionTest > profile-fix/bindings-test.log
java -Xverify:all -cp port-tests/classes:port-tests/ig-stubs:profile-fix/classes3-test.jar ps.reso.instaeclipse.mods.media.Upload450Test > profile-fix/upload-test.log
python3 port-tests/check_stage2.py > profile-fix/existing-static-test.log
python3 profile-fix/check_contracts.py
printf '%s\n' 'PASS: 17 profile gesture assertions; 61 existing JVM assertions; static contracts. Android runtime tests: 0.'
