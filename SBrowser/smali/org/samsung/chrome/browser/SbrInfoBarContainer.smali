.class public Lorg/samsung/chrome/browser/SbrInfoBarContainer;
.super Ljava/lang/Object;
.source "SbrInfoBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;,
        Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SbrInfoBarContainer"


# instance fields
.field private mNativeSbrInfoBarContainer:I

.field mSbrInfoBarCreationClient:Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mSbrInfoBarCreationClient:Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetAutoLoginMessage(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeInit(I)I
.end method

.method private native nativeOnAutoLogin(ILjava/lang/String;)V
.end method

.method private native nativeOnConfirmClicked(IZ)V
.end method

.method private native nativeOnInfoBarClosed(I)V
.end method

.method private static shouldShowAutoLogin(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mNativeSbrInfoBarContainer:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mNativeSbrInfoBarContainer:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->nativeDestroy(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mNativeSbrInfoBarContainer:I

    return-void
.end method

.method public getAutoLoginMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->nativeGetAutoLoginMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->nativeInit(I)I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mNativeSbrInfoBarContainer:I

    return-void
.end method

.method public onAutoLogin(ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->nativeOnAutoLogin(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfirmClicked(IZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->nativeOnConfirmClicked(IZ)V

    :cond_0
    return-void
.end method

.method public onInfoBarClosed(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->nativeOnInfoBarClosed(I)V

    :cond_0
    return-void
.end method

.method public setSbrInfoBarCreationClient(Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mSbrInfoBarCreationClient:Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;

    return-void
.end method

.method showAutoLoginInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mSbrInfoBarCreationClient:Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;->showAutoLoginInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;

    move-result-object v0

    return-object v0
.end method

.method showConfirmInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->mSbrInfoBarCreationClient:Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;->showConfirmInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;

    move-result-object v0

    return-object v0
.end method
