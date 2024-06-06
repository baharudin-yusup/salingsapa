
#-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
#-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

-keep class com.hiennv.flutter_callkit_incoming.** { *; }
-keep class io.agora.**{*;}
-keep class java.beans.Transient.** {*;}
-keep class java.beans.ConstructorProperties.** {*;}
-keep class java.nio.file.Path.** {*;}

-dontwarn io.agora.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**
-dontwarn java.beans.Transient
-dontwarn java.beans.ConstructorProperties
-dontwarn org.tensorflow.lite.gpu.GpuDelegateFactory$Options$GpuBackend
-dontwarn org.tensorflow.lite.gpu.GpuDelegateFactory$Options
-dontwarn org.w3c.dom.bootstrap.DOMImplementationRegistry