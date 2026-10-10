# Instagram 450 compatibility port

This branch preserves the compatibility work for Instagram `450.0.0.50.77`
(`385611438`) on Android 13 with Vector 2.2.

The porting workspace is under [`ports/ig450/`](ports/ig450/README.md). It is
kept separate from the upstream Java project because the tested implementation
was reconstructed and validated at the apktool/Smali level.

The current checkpoint is `0.7.0-relations.3-IG450-dev6-gcprobe`
(`versionCode 73`). The profile-picture long-press window fix is included. A
native `HeapTaskDaemon` crash remains under investigation; see
[`ports/ig450/STATUS.md`](ports/ig450/STATUS.md).

