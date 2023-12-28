# Specify the fully qualified class name to the JavaScript interface class:
-keepclassmembers class dev.jam.potskie19.JSScript {
   public *;
}

# Keep the AppsFlyer classes
-keep class com.appsflyer.** { *; }
-keep class com.android.installreferrer.** { *; }

# Keep the Google Play Install Referrer classes
#keep class com.google.android.gms.common.ConnectionResult {int SUCCESS;}

-keep class com.google.android.gms.measurement.*{ *; }
#keep class com.google.android.gms.ads.identifier.AdvertisingIdClient {com.google.android.gms.ads.identifier.AdvertisingIdClient$Info getAdvertisingIdInfo(android.content.Context);}

-keep public class * extends android.app.Application

-keep class com.appsflyer.**$InstallReceiver { *; }
-keep class com.appsflyer.**$referrer { *; }
-keep class com.appsflyer.AppsFlyerLib

# Keep any methods that are accessed via reflection
-keepclassmembers class * {
    @com.appsflyer.* <methods>;
}
