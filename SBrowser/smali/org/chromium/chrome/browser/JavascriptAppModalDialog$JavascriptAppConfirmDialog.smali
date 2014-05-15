.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;
.super Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppAlertDialog;
.source "JavascriptAppModalDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavascriptAppConfirmDialog"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppAlertDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getNegativeButtonText()I
    .locals 1

    const v0, 0x7f0c0206

    return v0
.end method

.method public hasNegativeButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
