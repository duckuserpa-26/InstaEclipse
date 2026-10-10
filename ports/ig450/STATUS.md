# Runtime status

## Confirmed fixes

- Instagram 450 class/method binding updates covered by the regression suite.
- Profile long press finds the profile image and resolves the HD image URL.
- Profile menu and fullscreen preview resolve the live owning Activity and validate the window token, preventing the observed `WindowManager.BadTokenException`.
- Profile gesture, story replay, download callback and WebView cleanup paths contain Java exceptions so they do not escape to the main thread.

## Open issue

With InstaEclipse enabled under Vector 2.2 on Android 13, Instagram has repeatedly terminated in `HeapTaskDaemon` with:

```text
SIGABRT
GC tried to mark invalid reference
```

The tombstones expose only `libstartup.so +0x83b950`; they do not identify a Java hook or caller. Dev6 isolates the module's five explicit deoptimization requests. A live log captured from process startup through the crash is still required to determine whether dev6 changes the failure.

## Important interpretation

Static checks and JVM fixtures verify bindings and control flow. They do not reproduce Android ART, Vector's native hooking layer, Instagram native code, WebView rendering, or network/server behavior. Passing counts must never be presented as 100% runtime compatibility.
