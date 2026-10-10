#!/usr/bin/env bash
set -euo pipefail
java -m jdk.compiler/com.sun.tools.javac.Main --release 8 -cp profile-stability/classes:port-tests/classes -d gc-diagnostic/helper-classes candidate/java450/ps/reso/instaeclipse/utils/DeoptDiagnostic450.java
java -cp tools/dex-tools-v2.4/lib/dx-30.0.2.jar com.android.dx.command.Main --dex --output=gc-diagnostic/helper.dex gc-diagnostic/helper-classes
bash tools/dex-tools-v2.4/d2j-baksmali.sh -f -o gc-diagnostic/helper-smali gc-diagnostic/helper.dex
python3 gc-diagnostic/apply_probe.py
cp gc-diagnostic/helper-smali/ps/reso/instaeclipse/utils/DeoptDiagnostic450.smali candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source/smali_classes3/ps/reso/instaeclipse/utils/DeoptDiagnostic450.smali
java -jar tools/apktool.jar b -f candidate/InstaEclipse-0.7.0-relations.2-IG449-source/apktool-source -o candidate/instaeclipse-450-dev6-unsigned.apk
