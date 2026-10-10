import com.android.apksig.*;
import java.io.*;
import java.security.*;
import java.security.cert.X509Certificate;
import java.util.*;
public class SignCandidate {
 public static void main(String[] a)throws Exception{
  char[] pass=System.getenv("IE_SIGN_PASS").toCharArray();KeyStore ks=KeyStore.getInstance("JKS");
  try(InputStream in=new FileInputStream(a[2])){ks.load(in,pass);}
  PrivateKey key=(PrivateKey)ks.getKey("instaeclipse",pass);
  X509Certificate cert=(X509Certificate)ks.getCertificate("instaeclipse");Arrays.fill(pass,'\0');
  ApkSigner.SignerConfig config=new ApkSigner.SignerConfig.Builder("instaeclipse",key,Collections.singletonList(cert)).build();
  new ApkSigner.Builder(Collections.singletonList(config)).setInputApk(new File(a[0])).setOutputApk(new File(a[1]))
   .setV1SigningEnabled(true).setV2SigningEnabled(true).setV3SigningEnabled(true).setV4SigningEnabled(false)
   .setAlignmentPreserved(false).setLibraryPageAlignmentBytes(4096).build().sign();
  ApkVerifier.Result r=new ApkVerifier.Builder(new File(a[1])).build().verify();
  System.out.println("verified="+r.isVerified()+" v1="+r.isVerifiedUsingV1Scheme()+" v2="+r.isVerifiedUsingV2Scheme()+" v3="+r.isVerifiedUsingV3Scheme());
  System.out.println("errors="+r.getAllErrors());System.out.println("warnings="+r.getWarnings());
  if(!r.isVerified())throw new AssertionError("APK signature verification failed");
 }
}
