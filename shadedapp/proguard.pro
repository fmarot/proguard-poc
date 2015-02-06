# list of jars in alphabetical order (as they appear in Eclipse explorer)
#-injars ../advcore.jar (!META-INF/MANIFEST.MF)
#-injars ../analysis.jar (!META-INF/MANIFEST.MF)

#-outjars ../lib/outjar.jar
-printmapping ./obfuscation.map

#-libraryjars <java.home>/lib/rt.jar
#-libraryjars <java.home>/lib/jce.jar
#-libraryjars ../lib/

-dontoptimize
#-dontpreverify
-dontshrink

### USER INPUTS ###
-keep class com.teamtter.module.inputs.** { <fields>; <methods>; }
###################

-obfuscationdictionary keywords.txt
-classobfuscationdictionary windows.txt
-packageobfuscationdictionary windows.txt

-keepattributes Exceptions, Signature, RuntimeVisibleAnnotations

-keep interface * extends java.rmi.Remote {
    <methods>;
}

-keep class * implements java.rmi.Remote {
    <init>(java.rmi.activation.ActivationID, java.rmi.MarshalledObject);
}


-keep public class * implements com.teamtter.DoNotObfuscate {
    <fields>;
    <methods>;
}
