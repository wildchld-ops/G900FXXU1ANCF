.class public abstract Lorg/chromium/content/browser/WebContentsObserverAndroid;
.super Ljava/lang/Object;
.source "WebContentsObserverAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mNativeWebContentsObserverAndroid:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentViewCore()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->nativeInit(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/WebContentsObserverAndroid;->mNativeWebContentsObserverAndroid:I

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit(I)I
.end method


# virtual methods
.method public detachFromWebContents()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/WebContentsObserverAndroid;->mNativeWebContentsObserverAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/WebContentsObserverAndroid;->mNativeWebContentsObserverAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/WebContentsObserverAndroid;->mNativeWebContentsObserverAndroid:I

    :cond_0
    return-void
.end method

.method public didChangeVisibleSSLState()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didRedirectProvisionalLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method
