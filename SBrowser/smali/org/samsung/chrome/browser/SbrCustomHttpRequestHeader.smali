.class public Lorg/samsung/chrome/browser/SbrCustomHttpRequestHeader;
.super Ljava/lang/Object;
.source "SbrCustomHttpRequestHeader.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "net"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrCustomHttpRequestHeader;->nativeClear()V

    return-void
.end method

.method public static clearCustomAcceptLanguage()V
    .locals 0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrCustomHttpRequestHeader;->nativeClearCustomAcceptLanguage()V

    return-void
.end method

.method private static native nativeClear()V
.end method

.method private static native nativeClearCustomAcceptLanguage()V
.end method

.method private static native nativeRemoveByName(Ljava/lang/String;)Z
.end method

.method private static native nativeSet(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private static native nativeSetCustomAcceptLanguage(Ljava/lang/String;)V
.end method

.method public static removeByName(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrCustomHttpRequestHeader;->nativeRemoveByName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrCustomHttpRequestHeader;->nativeSet(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCustomAcceptLanguage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrCustomHttpRequestHeader;->nativeSetCustomAcceptLanguage(Ljava/lang/String;)V

    return-void
.end method
