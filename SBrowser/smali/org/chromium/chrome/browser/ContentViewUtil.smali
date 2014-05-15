.class public abstract Lorg/chromium/chrome/browser/ContentViewUtil;
.super Ljava/lang/Object;
.source "ContentViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNativeWebContents(Z)I
    .locals 1

    invoke-static {p0}, Lorg/chromium/chrome/browser/ContentViewUtil;->nativeCreateNativeWebContents(Z)I

    move-result v0

    return v0
.end method

.method public static destroyNativeWebContents(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/chrome/browser/ContentViewUtil;->nativeDestroyNativeWebContents(I)V

    return-void
.end method

.method private static native nativeCreateNativeWebContents(Z)I
.end method

.method private static native nativeDestroyNativeWebContents(I)V
.end method
