import org.objectweb.asm.*;
import java.nio.file.*;
public class DirectFixtureBuilder implements Opcodes {
 static ClassWriter cl(String n){ClassWriter w=new ClassWriter(0);w.visit(V1_6,ACC_PUBLIC,n,null,"java/lang/Object",null);MethodVisitor m=w.visitMethod(ACC_PUBLIC,"<init>","()V",null,null);m.visitCode();m.visitVarInsn(ALOAD,0);m.visitMethodInsn(INVOKESPECIAL,"java/lang/Object","<init>","()V",false);m.visitInsn(RETURN);m.visitMaxs(1,1);m.visitEnd();return w;}
 static void save(String n,ClassWriter w)throws Exception{w.visitEnd();Path p=Paths.get("regression450/direct-fixtures",n+".class");Files.createDirectories(p.getParent());Files.write(p,w.toByteArray());}
 static void empty(ClassWriter w,String n){MethodVisitor m=w.visitMethod(ACC_PUBLIC,n,"()V",null,null);m.visitCode();m.visitInsn(RETURN);m.visitMaxs(0,1);m.visitEnd();}
 public static void main(String[] a)throws Exception{
  String key="Lcom/instagram/model/direct/DirectThreadKey;";
  ClassWriter w=cl("com/instagram/model/direct/DirectThreadKey");w.visitField(ACC_PUBLIC,"A00","Ljava/lang/String;",null,null).visitEnd();save("com/instagram/model/direct/DirectThreadKey",w);
  w=cl("X/01TB");w.visitField(ACC_PUBLIC,"testKey",key,null,null).visitEnd();MethodVisitor m=w.visitMethod(ACC_PUBLIC,"A0E","()"+key,null,null);m.visitCode();m.visitVarInsn(ALOAD,0);m.visitFieldInsn(GETFIELD,"X/01TB","testKey",key);m.visitInsn(ARETURN);m.visitMaxs(1,1);m.visitEnd();save("X/01TB",w);
  w=cl("X/01Sn");w.visitField(ACC_PUBLIC,"A02","LX/01TB;",null,null).visitEnd();empty(w,"onResume");empty(w,"onPause");save("X/01Sn",w);
  w=cl("X/04k3");m=w.visitMethod(ACC_PUBLIC,"A0Z","(Z)Z",null,null);m.visitCode();m.visitInsn(ICONST_1);m.visitInsn(IRETURN);m.visitMaxs(1,2);m.visitEnd();save("X/04k3",w);
 }
}
