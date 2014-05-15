.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
.super Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;
.source "InfoBarContainer.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeConfirmInfoBar"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;-><init>(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    sget-object v7, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_CONFIRM:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;->setInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    return-void
.end method


# virtual methods
.method public onConfirmButtonClicked(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->isDismissed()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getSbrInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    invoke-virtual {v0, v1, p2}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->onConfirmClicked(IZ)V

    :cond_0
    return-void
.end method
