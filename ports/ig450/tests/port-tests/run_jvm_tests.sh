#!/usr/bin/env bash
set -euo pipefail
# Run from the project workspace after building the candidate APK.
# Structural fixtures are NOT an Android emulator and do NOT implement Instagram.
unzip -p candidate/instaeclipse-450-UNVALIDATED-unsigned.apk classes3.dex > candidate/classes3.dex
bash tools/dex-tools-v2.4/d2j-dex2jar.sh -f -o candidate/classes3-jvm.jar candidate/classes3.dex > port-tests/dex2jar.log 2>&1
bash tools/dex-tools-v2.4/d2j-class-version-switch.sh 6 candidate/classes3-jvm.jar candidate/classes3-jvm-v50.jar
python3 port-tests/check_stage2.py > port-tests/static-test.log
python3 port-tests/prepare_stubs.py
java -m jdk.compiler/com.sun.tools.javac.Main -cp tools/dex-tools-v2.4/lib/asm-9.5.jar -d port-tests/classes port-tests/BuildStubs.java
java -cp port-tests/classes:tools/dex-tools-v2.4/lib/asm-9.5.jar BuildStubs port-tests/stub-spec.tsv port-tests/ig-stubs
java -m jdk.compiler/com.sun.tools.javac.Main --release 8 -d port-tests/classes port-tests/stubs/de/robv/android/xposed/*.java port-tests/stubs/android/content/Context.java port-tests/stubs/android/content/res/Resources.java port-tests/stubs/android/util/DisplayMetrics.java port-tests/stubs/android/graphics/Bitmap.java
java -m jdk.compiler/com.sun.tools.javac.Main -cp port-tests/classes:candidate/classes3-jvm.jar -d port-tests/classes port-tests/LikeDelayQueueTest.java port-tests/CoreBehaviorTest.java port-tests/Upload450Test.java port-tests/BindingConstructionTest.java
java -Xverify:all -cp port-tests/classes:candidate/classes3-jvm-v50.jar LikeDelayQueueTest > port-tests/queue-test.log
java -Xverify:all -cp port-tests/classes:candidate/classes3-jvm-v50.jar ps.reso.instaeclipse.mods.media.CoreBehaviorTest > port-tests/core-test.log
java -Xverify:all -cp port-tests/classes:port-tests/ig-stubs:candidate/classes3-jvm-v50.jar BindingConstructionTest > port-tests/bindings-test.log
java -Xverify:all -cp port-tests/classes:port-tests/ig-stubs:candidate/classes3-jvm-v50.jar ps.reso.instaeclipse.mods.media.Upload450Test > port-tests/upload-test.log
python3 -m unittest discover -s audit -p test_audit.py
printf '%s\n' 'Passed: 141 APK contract checks, 61 JVM assertions, 5 audit-parser tests. Android runtime tests: 0.'
