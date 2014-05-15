.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;
.implements Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeInfoBar"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mInfoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

.field protected mNativeInfoBarPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mInfoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    return-void
.end method

.method public getInfoBar()Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mInfoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    return-object v0
.end method

.method public onWebAlertDismissed(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mInfoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getSbrInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->onInfoBarClosed(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mNativeInfoBarPtr:I

    goto :goto_0
.end method

.method public setInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mInfoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->mInfoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setNavigationExpiry(Z)V

    return-void
.end method
