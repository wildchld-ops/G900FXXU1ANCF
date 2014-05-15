.class Lorg/samsung/chrome/browser/SbrAndroidNetworkLibrary;
.super Ljava/lang/Object;
.source "SbrAndroidNetworkLibrary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SbrAndroidNetworkLibrary"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;)I
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Lorg/samsung/net/SbrX509Util;->verifyServerCertificates([[BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
