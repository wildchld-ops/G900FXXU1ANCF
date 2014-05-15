.class public Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;
.super Ljava/lang/Object;
.source "InterstitialPageDelegateAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mNativePtr:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->nativeInit(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    return-void
.end method

.method private native nativeDontProceed(I)V
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeProceed(I)V
.end method

.method private onNativeDestroyed()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    return-void
.end method


# virtual methods
.method protected commandReceived(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method protected dontProceed()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->nativeDontProceed(I)V

    :cond_0
    return-void
.end method

.method public getNative()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    return v0
.end method

.method protected onDontProceed()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method protected onProceed()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method protected proceed()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->nativeProceed(I)V

    :cond_0
    return-void
.end method
