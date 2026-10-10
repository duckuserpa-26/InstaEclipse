# InstaEclipse compatibility port for Instagram 450

Target environment:

- Instagram `450.0.0.50.77` (`385611438`)
- Android 13
- Vector 2.2

## Current checkpoint

The files in this directory correspond to
`0.7.0-relations.3-IG450-dev6-gcprobe` (`versionCode 73`). They include the
Instagram 450 compatibility work and the profile-picture window fix introduced
in dev5.

Dev6 is a diagnostic checkpoint. It redirects five explicit
`deoptimizeMethod(Member)` requests to `DeoptDiagnostic450` while preserving
hook registration, to test whether module-triggered deoptimization contributes
to the native `HeapTaskDaemon` failure reported as `GC tried to mark invalid
reference`.

## Layout

- `smali_classes3/` — final changed Smali files from the tested checkpoint
- `java450/` — source for helpers added during the Instagram 450 port
- `tests/port-tests/` — base compatibility fixtures and checks
- `tests/profile-fix/` — profile long-press regression fixtures
- `tests/regression450/` — Instagram 450 regression suite
- `tests/profile-stability/` — window ownership and callback-containment tests
- `tests/gc-diagnostic/` — dev6 native-crash isolation checkpoint
- `apktool.yml` — apktool metadata for the checkpoint

These files are a porting overlay, not a standalone Gradle module. Apply them
to the matching reconstructed apktool source tree. External tools, Instagram
APKs, generated APKs and signing material are intentionally not included.

## Verification state

- 143 JVM assertions passed
- 190 static checks passed
- signed DEX matched the tested DEX in the diagnostic build
- Android/ART/Vector runtime tests in the build environment: 0

Device testing remains authoritative for native runtime behavior. Passing the
static and JVM checks is not a claim of 100% runtime compatibility.

## Sensitive material

This tree contains no signing keys, passwords, Instagram APKs, device logs,
captured account data, runtime media URLs or user configuration.

