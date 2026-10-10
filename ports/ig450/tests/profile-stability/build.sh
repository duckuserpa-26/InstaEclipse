#!/usr/bin/env bash
set -euo pipefail
python3 profile-stability/make_fixtures.py
java -m jdk.compiler/com.sun.tools.javac.Main --release 8 -cp port-tests/classes -d profile-stability/classes $(find profile-stability/fixtures -name '*.java') profile-fix/ProfileGestureTest.java profile-stability/ProfileStabilityTest.java
java -m jdk.compiler/com.sun.tools.javac.Main --release 8 -cp profile-stability/classes:port-tests/classes -d profile-stability/helper-classes candidate/java450/ps/reso/instaeclipse/mods/media/ProfileUi450.java
java -cp tools/dex-tools-v2.4/lib/dx-30.0.2.jar com.android.dx.command.Main --dex --output=profile-stability/helper.dex profile-stability/helper-classes
bash tools/dex-tools-v2.4/d2j-baksmali.sh -f -o profile-stability/helper-smali profile-stability/helper.dex
python3 profile-stability/apply_fix.py
cp profile-stability/helper-smali/ps/reso/instaeclipse/mods/media/ProfileUi450.smali candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source/smali_classes3/ps/reso/instaeclipse/mods/media/ProfileUi450.smali
# Force assembly: the incremental build previously reused the old classes3.dex.
java -jar tools/apktool.jar b -f candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source -o candidate/instaeclipse-450-dev5-unsigned.apk
python3 - <<'PY'
from zipfile import ZipFile
data=ZipFile('candidate/instaeclipse-450-dev5-unsigned.apk').read('classes3.dex')
assert b'ProfileUi450' in data and b'unguardedDev5' in data
PY
