import com.android.apksig.ApkVerifier;
import java.io.File;
public class VerifyCandidate {
 public static void main(String[] a)throws Exception {
  ApkVerifier.Result r=new ApkVerifier.Builder(new File(a[0])).setMinCheckedPlatformVersion(33).setMaxCheckedPlatformVersion(33).build().verify();
  System.out.println("Android_13_signature_valid="+r.isVerified()+" errors="+r.getAllErrors());
  if(!r.isVerified())throw new AssertionError("Android 13 signature");
 }
}
