import org.objectweb.asm.*;
import java.nio.file.*;
import java.util.*;
/** Structural fixtures only. Never used as evidence of device behavior. */
public class BuildStubs implements Opcodes {
 static String internal(String s){return s.replace('.','/');}
 static void finish(MethodVisitor m){m.visitMaxs(0,0);m.visitEnd();}
 static void emptyReturn(MethodVisitor m,String desc){
  Type t=Type.getReturnType(desc);int k=t.getSort();
  if(k==Type.VOID)m.visitInsn(RETURN);
  else if(k==Type.LONG){m.visitInsn(LCONST_0);m.visitInsn(LRETURN);}
  else if(k==Type.DOUBLE){m.visitInsn(DCONST_0);m.visitInsn(DRETURN);}
  else if(k==Type.FLOAT){m.visitInsn(FCONST_0);m.visitInsn(FRETURN);}
  else if(k==Type.OBJECT||k==Type.ARRAY){m.visitInsn(ACONST_NULL);m.visitInsn(ARETURN);}
  else{m.visitInsn(ICONST_0);m.visitInsn(IRETURN);}
 }
 public static void main(String[] a)throws Exception{
  Map<String,String[]> classes=new LinkedHashMap<>();Map<String,List<String[]>> members=new HashMap<>();
  for(String line:Files.readAllLines(Path.of(a[0]))){String[] p=line.split("\t",-1);if(p[0].equals("C"))classes.put(p[1],p);else members.computeIfAbsent(p[1],x->new ArrayList<>()).add(p);}
  for(var e:classes.entrySet()){
   String[] p=e.getValue();String name=internal(p[1]),sup=internal(p[2]);boolean itf=p[4].equals("1"),en=name.equals("X/0NTX");
   String[] ii=p[3].isEmpty()?new String[0]:Arrays.stream(p[3].split(",")).map(BuildStubs::internal).toArray(String[]::new);
   ClassWriter w=new ClassWriter(ClassWriter.COMPUTE_MAXS);
   w.visit(V1_6,ACC_PUBLIC|(itf?ACC_INTERFACE|ACC_ABSTRACT:ACC_SUPER)|(en?ACC_ENUM:0),name,null,sup,ii);
   List<String[]> ms=members.getOrDefault(e.getKey(),List.of());Set<String> done=new HashSet<>();
   for(String[] m:ms)if(m[0].equals("F")&&done.add("F"+m[2]))w.visitField(ACC_PUBLIC|(m[4].equals("1")?ACC_STATIC:0),m[2],m[3],null,null).visitEnd();
   if(en){
    if(!done.contains("FA01"))w.visitField(ACC_PUBLIC,"A01","I",null,null).visitEnd();
    MethodVisitor m=w.visitMethod(ACC_PUBLIC,"<init>","(Ljava/lang/String;I)V",null,null);m.visitCode();m.visitVarInsn(ALOAD,0);m.visitVarInsn(ALOAD,1);m.visitVarInsn(ILOAD,2);m.visitMethodInsn(INVOKESPECIAL,"java/lang/Enum","<init>","(Ljava/lang/String;I)V",false);m.visitVarInsn(ALOAD,0);m.visitIntInsn(BIPUSH,77);m.visitFieldInsn(PUTFIELD,name,"A01","I");m.visitInsn(RETURN);finish(m);
    m=w.visitMethod(ACC_PUBLIC|ACC_STATIC,"values","()[L"+name+";",null,null);m.visitCode();m.visitInsn(ICONST_1);m.visitTypeInsn(ANEWARRAY,name);m.visitInsn(DUP);m.visitInsn(ICONST_0);m.visitTypeInsn(NEW,name);m.visitInsn(DUP);m.visitLdcInsn("REPORT");m.visitInsn(ICONST_0);m.visitMethodInsn(INVOKESPECIAL,name,"<init>","(Ljava/lang/String;I)V",false);m.visitInsn(AASTORE);m.visitInsn(ARETURN);finish(m);
   }
   for(String[] m:ms)if(m[0].equals("M")&&done.add("M"+m[2]+m[3])){
    boolean st=m[4].equals("1");int flags=ACC_PUBLIC|(st?ACC_STATIC:0)|((itf&&!st)?ACC_ABSTRACT:0);
    MethodVisitor v=w.visitMethod(flags,m[2],m[3],null,null);
    if(itf&&!st){v.visitEnd();continue;}v.visitCode();
    if(m[2].equals("<init>")){v.visitVarInsn(ALOAD,0);v.visitMethodInsn(INVOKESPECIAL,sup,"<init>","()V",false);v.visitInsn(RETURN);}else emptyReturn(v,m[3]);finish(v);
   }
   if(!itf&&!en&&!done.contains("M<init>()V")){
    MethodVisitor v=w.visitMethod(ACC_PUBLIC,"<init>","()V",null,null);v.visitCode();v.visitVarInsn(ALOAD,0);v.visitMethodInsn(INVOKESPECIAL,sup,"<init>","()V",false);v.visitInsn(RETURN);finish(v);
   }
   if(!itf&&!en){
    MethodVisitor v=w.visitMethod(ACC_STATIC,"<clinit>","()V",null,null);v.visitCode();
    for(String[] m:ms)if(m[0].equals("F")&&m[4].equals("1")&&m[3].startsWith("L")&&!m[3].startsWith("Ljava/")){
      String target=m[3].substring(1,m[3].length()-1);String[] info=classes.get(target.replace('/','.'));
      if(info!=null&&info[4].equals("0")&&!target.equals("X/0NTX")){v.visitTypeInsn(NEW,target);v.visitInsn(DUP);v.visitMethodInsn(INVOKESPECIAL,target,"<init>","()V",false);v.visitFieldInsn(PUTSTATIC,name,m[2],m[3]);}
    }v.visitInsn(RETURN);finish(v);
   }
   w.visitEnd();Path out=Path.of(a[1],name+".class");Files.createDirectories(out.getParent());Files.write(out,w.toByteArray());
  }
 }
}
