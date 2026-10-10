import java.util.zip.*;
import java.io.*;
import org.objectweb.asm.*;
/** Repairs dex2jar max_stack metadata only. Does not change APK/DEX or instructions. */
public class RecomputeMax {
 public static void main(String[] args)throws Exception{
  try(ZipInputStream in=new ZipInputStream(new FileInputStream(args[0]));ZipOutputStream out=new ZipOutputStream(new FileOutputStream(args[1]))){
   for(ZipEntry e;(e=in.getNextEntry())!=null;){
    byte[] b=in.readAllBytes();
    if(e.getName().endsWith(".class")){
     ClassWriter w=new ClassWriter(ClassWriter.COMPUTE_MAXS);
     new ClassReader(b).accept(w,0);b=w.toByteArray();
    }
    out.putNextEntry(new ZipEntry(e.getName()));out.write(b);out.closeEntry();
   }
  }
 }
}
