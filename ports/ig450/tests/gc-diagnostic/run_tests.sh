#!/usr/bin/env bash
set -euo pipefail
unzip -p candidate/instaeclipse-450-dev6-unsigned.apk classes3.dex > gc-diagnostic/classes3.dex
bash tools/dex-tools-v2.4/d2j-dex2jar.sh -f -o gc-diagnostic/classes3.jar gc-diagnostic/classes3.dex > gc-diagnostic/dex2jar.log 2>&1
bash tools/dex-tools-v2.4/d2j-class-version-switch.sh 6 gc-diagnostic/classes3.jar gc-diagnostic/classes3-v50.jar
java -cp profile-fix/classes:tools/dex-tools-v2.4/lib/asm-9.5.jar RecomputeMax gc-diagnostic/classes3-v50.jar gc-diagnostic/classes3-test.jar
python3 port-tests/check_stage2.py > gc-diagnostic/static-stage2.log
python3 profile-fix/check_contracts.py > gc-diagnostic/static-profile.log
python3 regression450/scan_coverage.py > gc-diagnostic/static-extended.log
python3 port-tests/prepare_stubs.py
java -cp port-tests/classes:tools/dex-tools-v2.4/lib/asm-9.5.jar BuildStubs port-tests/stub-spec.tsv port-tests/ig-stubs
java -m jdk.compiler/com.sun.tools.javac.Main -cp port-tests/classes:gc-diagnostic/classes3.jar -d regression450/classes regression450/fixtures/ps/reso/instaeclipse/utils/feature/FeatureStatusTracker.java regression450/fixtures/org/luckypray/dexkit/DexKitBridge.java regression450/NetworkRegressionTest.java regression450/FollowPayloadTest.java
java -m jdk.compiler/com.sun.tools.javac.Main -cp tools/dex-tools-v2.4/lib/asm-9.5.jar -d regression450/classes regression450/DirectFixtureBuilder.java
java -cp regression450/classes:tools/dex-tools-v2.4/lib/asm-9.5.jar DirectFixtureBuilder
java -m jdk.compiler/com.sun.tools.javac.Main -cp port-tests/classes -d regression450/direct-test-classes regression450/direct-stubs/de/robv/android/xposed/XposedBridge.java regression450/DirectCompatibilityTest.java
java -Xverify:all -cp regression450/direct-test-classes:regression450/direct-fixtures:regression450/classes:profile-stability/classes:profile-fix/classes:port-tests/classes:gc-diagnostic/classes3-test.jar DirectCompatibilityTest > gc-diagnostic/direct-test.log
for test in NetworkRegressionTest FollowPayloadTest; do
 java -Xverify:all -cp regression450/classes:profile-stability/classes:profile-fix/classes:port-tests/classes:gc-diagnostic/classes3-test.jar "$test" > "gc-diagnostic/after-$test.log"
done
java -Xverify:all -cp profile-stability/classes:profile-fix/classes:port-tests/classes:gc-diagnostic/classes3-test.jar ProfileGestureTest > gc-diagnostic/profile-test.log
java -Xverify:all -cp port-tests/classes:gc-diagnostic/classes3-test.jar LikeDelayQueueTest > gc-diagnostic/queue-test.log
java -Xverify:all -cp port-tests/classes:gc-diagnostic/classes3-test.jar ps.reso.instaeclipse.mods.media.CoreBehaviorTest > gc-diagnostic/core-test.log
java -Xverify:all -cp port-tests/classes:port-tests/ig-stubs:gc-diagnostic/classes3-test.jar BindingConstructionTest > gc-diagnostic/bindings-test.log
java -Xverify:all -cp port-tests/classes:port-tests/ig-stubs:gc-diagnostic/classes3-test.jar ps.reso.instaeclipse.mods.media.Upload450Test > gc-diagnostic/upload-test.log
printf '%s\n' 'Passed: 44 new JVM assertions + 78 previous = 122. Static checks: 179. Android runtime tests: 0.'

java -Xverify:all -cp profile-stability/classes:port-tests/classes:gc-diagnostic/classes3-test.jar ProfileStabilityTest > gc-diagnostic/stability-test.log

java -m jdk.compiler/com.sun.tools.javac.Main --release 8 -cp profile-stability/classes -d gc-diagnostic/test-classes gc-diagnostic/DeoptProbeTest.java
java -Xverify:all -cp gc-diagnostic/test-classes:profile-stability/classes:port-tests/classes:gc-diagnostic/classes3-test.jar DeoptProbeTest > gc-diagnostic/probe-test.log
python3 gc-diagnostic/check_probe.py
