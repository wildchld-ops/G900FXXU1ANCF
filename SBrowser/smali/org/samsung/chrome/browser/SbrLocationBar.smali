.class public Lorg/samsung/chrome/browser/SbrLocationBar;
.super Ljava/lang/Object;
.source "SbrLocationBar.java"


# instance fields
.field public mNativeSbrLocationBar:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeDestroy(I)V
.end method

.method public static native nativeGetSecurityLevel(ILorg/chromium/content/browser/ContentViewCore;)I
.end method

.method public static native nativeGetUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeOnSecurityButtonClicked(ILandroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
.end method


# virtual methods
.method public GetUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/samsung/chrome/browser/SbrLocationBar;->nativeGetUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Init()I
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrLocationBar;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrLocationBar;->mNativeSbrLocationBar:I

    iget v0, p0, Lorg/samsung/chrome/browser/SbrLocationBar;->mNativeSbrLocationBar:I

    return v0
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrLocationBar;->mNativeSbrLocationBar:I

    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrLocationBar;->nativeDestroy(I)V

    return-void
.end method

.method public getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrLocationBar;->mNativeSbrLocationBar:I

    invoke-static {v0, p1}, Lorg/samsung/chrome/browser/SbrLocationBar;->nativeGetSecurityLevel(ILorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    return v0
.end method

.method public native nativeInit()I
.end method

.method public onSecurityButtonClicked(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrLocationBar;->mNativeSbrLocationBar:I

    invoke-static {v0, p1, p2}, Lorg/samsung/chrome/browser/SbrLocationBar;->nativeOnSecurityButtonClicked(ILandroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method
