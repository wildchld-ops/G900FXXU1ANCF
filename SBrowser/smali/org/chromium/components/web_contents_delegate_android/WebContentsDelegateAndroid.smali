.class public Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.super Ljava/lang/Object;
.source "WebContentsDelegateAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "components"
.end annotation


# static fields
.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_LOG:I = 0x1

.field public static final LOG_LEVEL_TIP:I = 0x0

.field public static final LOG_LEVEL_WARNING:I = 0x2


# instance fields
.field private mMostRecentProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    return-void
.end method

.method private final notifyLoadProgressChanged(D)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-wide/high16 v0, 0x4059

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    iget v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    invoke-virtual {p0, v0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->onLoadProgressChanged(I)V

    return-void
.end method


# virtual methods
.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public addNewContents(IIILandroid/graphics/Rect;Z)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public closeContents()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public getMostRecentProgress()I
    .locals 1

    iget v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    return v0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onLoadProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public onLoadStarted()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public onLoadStopped()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public onTitleUpdated()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public openNewTab(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public rendererResponsive()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public rendererUnresponsive()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public setMostRecentProgressIfNeeded(I)V
    .locals 2

    const/16 v0, 0x64

    iget v1, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    :cond_0
    return-void
.end method

.method public showRepostFormWarningDialog(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public takeFocus(Z)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method
