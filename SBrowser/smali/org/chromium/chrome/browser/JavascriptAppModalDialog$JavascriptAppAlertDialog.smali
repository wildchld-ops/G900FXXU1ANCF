.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppAlertDialog;
.super Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.source "JavascriptAppModalDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavascriptAppAlertDialog"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/JavascriptAppModalDialog$1;)V

    return-void
.end method


# virtual methods
.method public getPositiveButtonText()I
    .locals 1

    const v0, 0x7f0c0205

    return v0
.end method

.method public hasPositiveButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
