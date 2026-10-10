package ps.reso.instaeclipse.mods.media;
import android.graphics.Bitmap;
import java.io.File;
// Compile-only declaration; never bundled or used as a behavior implementation.
public class InstantUploadHook {
 static final class PendingMedia {File file;Bitmap preview;boolean video;}
 static PendingMedia peekFresh(){throw new UnsupportedOperationException();}
 static PendingMedia takeFresh(){throw new UnsupportedOperationException();}
 static void arm(PendingMedia p){throw new UnsupportedOperationException();}
 static void onConsumed(PendingMedia p,String source){throw new UnsupportedOperationException();}
 static void failureToast(){throw new UnsupportedOperationException();}
}
