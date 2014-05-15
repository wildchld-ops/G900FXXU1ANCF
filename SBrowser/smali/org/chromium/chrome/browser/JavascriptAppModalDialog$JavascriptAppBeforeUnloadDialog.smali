.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;
.super Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;
.source "JavascriptAppModalDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavascriptAppBeforeUnloadDialog"
.end annotation


# instance fields
.field private mIsReload:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;->mIsReload:Z

    return-void
.end method


# virtual methods
.method public getNegativeButtonText()I
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;->mIsReload:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c020a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0208

    goto :goto_0
.end method

.method public getPositiveButtonText()I
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;->mIsReload:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0209

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c0207

    goto :goto_0
.end method

.method public hasNegativeButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasPositiveButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
