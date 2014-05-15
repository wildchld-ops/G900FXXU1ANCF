.class public Lorg/chromium/content/browser/ContentView;
.super Landroid/widget/FrameLayout;
.source "ContentView.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
.implements Lorg/chromium/content/browser/PageInfo;


# static fields
.field public static final PERSONALITY_CHROME:I = 0x1

.field public static final PERSONALITY_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContentView"


# instance fields
.field protected final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContextMenuInfo:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

.field private mCurrentTouchOffsetX:F

.field private mCurrentTouchOffsetY:F

.field private mTagTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p4, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "ContentView"

    const-string v1, "new Instance Creation of ContentView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {v0, p1, p6}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->contentViewMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p0, p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;ILorg/chromium/ui/WindowAndroid;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/ContentView;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/content/browser/ContentView;->mCurrentTouchOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-object v0
.end method

.method public static hasHardwareAcceleration(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasHardwareAcceleration(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;I)Lorg/chromium/content/browser/ContentView;
    .locals 6

    const/4 v3, 0x0

    const v4, 0x1010085

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    const v0, 0x1010085

    invoke-static {p0, p1, p2, p3, v0}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;I)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;I)Lorg/chromium/content/browser/ContentView;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)Lorg/chromium/content/browser/ContentView;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/chromium/content/browser/ContentView;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentView;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrContentView;-><init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/JellyBeanContentView;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/JellyBeanContentView;-><init>(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;Landroid/util/AttributeSet;II)V

    goto :goto_0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canGoToOffset(I)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->canGoToOffset(I)Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method checkIsAlive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->checkIsAlive()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->clearHistory()V

    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "ContentView"

    const-string v1, " Instance destruction of ContentView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public evaluateJavaScript(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->exitFullscreen()V

    return-void
.end method

.method public fling(JIIII)V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->fling(JIIII)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ContentView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getContentScrollY()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public getContentSettings()Lorg/chromium/content/browser/ContentSettings;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public getContentViewHeight()I
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isHideURLFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isBottomBarVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :cond_1
    return v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContextMenuInfo:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    return-object v0
.end method

.method getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v0

    return-object v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public getSbrContentSettings()Lorg/samsung/content/sbrowser/SbrContentSettings;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentSettings()Lorg/samsung/content/sbrowser/SbrContentSettings;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSingleTapX()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getSingleTapX()I

    move-result v0

    return v0
.end method

.method public getSingleTapY()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getSingleTapY()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUseDesktopUserAgent()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getZoomControlsForTest()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getZoomControlsForTest()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 2

    const-string v0, "ContentView"

    const-string v1, "goBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->goBack()V

    return-void
.end method

.method public goForward()V
    .locals 2

    const-string v0, "ContentView"

    const-string v1, "goForward"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->goForward()V

    return-void
.end method

.method public goToOffset(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->goToOffset(I)V

    return-void
.end method

.method public hideSelectActionBar()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->invokeZoomPicker()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCrashed()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isCrashed()Z

    move-result v0

    return v0
.end method

.method public isInjectingAccessibilityScript()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isInjectingAccessibilityScript()Z

    move-result v0

    return v0
.end method

.method public isMultiTouchZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isMultiTouchZoomSupported()Z

    move-result v0

    return v0
.end method

.method isPersonalityView()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isPersonalityView()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isReady()Z

    move-result v0

    return v0
.end method

.method public isReadyForSnapshot()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->isCrashed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V
    .locals 2

    const-string v0, "ContentView"

    const-string v1, "loadUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    return-void
.end method

.method public moveFocusToNext()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->moveFocusToNext()V

    return-void
.end method

.method public moveFocusToPrevious()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->moveFocusToPrevious()V

    return-void
.end method

.method public needsReload()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->needsReload()Z

    move-result v0

    return v0
.end method

.method public onActivityPause()V
    .locals 3

    const-string v0, "ContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:onActivityPause, contentView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onActivityPause()V

    return-void
.end method

.method public onActivityResume()V
    .locals 3

    const-string v0, "ContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:onActivityResume, contentView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onActivityResume()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const-string v0, "ContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onAttachedToWindow()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const-string v0, "ContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHide()V
    .locals 3

    const-string v0, "ContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:onHide, ContentView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method public onShow()V
    .locals 3

    const-string v0, "ContentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:onShow, ContentView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VerificationLog"

    const-string v1, "Calling mContentViewCore.onShow() - before"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    const-string v0, "VerificationLog"

    const-string v1, "Calling mContentViewCore.onShow() - after"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->onSizeChanged(IIII)V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lorg/chromium/content/browser/ContentView;->mCurrentTouchOffsetX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/ContentView;->mCurrentTouchOffsetY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentView;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public performHaptic(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_extra"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x5208

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x5212

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x5226

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x521c

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x5221

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public pinchBegin(JII)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBegin(JII)V

    return-void
.end method

.method public pinchBy(JIIF)V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBy(JIIF)V

    return-void
.end method

.method public pinchEnd(J)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchEnd(J)V

    return-void
.end method

.method public reload()V
    .locals 2

    const-string v0, "ContentView"

    const-string v1, "reload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->reload()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->scrollTo(II)V

    return-void
.end method

.method public setAccessibilityState(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    return-void
.end method

.method public setContextMenuInfoToContentView(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentView;->mContextMenuInfo:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    return-void
.end method

.method public setCurrentMotionEventOffsets(FF)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentView;->mCurrentTouchOffsetX:F

    iput p2, p0, Lorg/chromium/content/browser/ContentView;->mCurrentTouchOffsetY:F

    return-void
.end method

.method public setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V

    return-void
.end method

.method setIgnoreSingleTap(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setIgnoreSingleTap(Z)V

    return-void
.end method

.method public setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V

    return-void
.end method

.method public setTagTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentView;->mTagTitle:Ljava/lang/String;

    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->setUseDesktopUserAgent(ZZ)V

    return-void
.end method

.method public startFpsProfiling()V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public stopCurrentAccessibilityNotifications()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->stopCurrentAccessibilityNotifications()V

    return-void
.end method

.method public stopFpsProfiling()F
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public stopLoading()V
    .locals 2

    const-string v0, "ContentView"

    const-string v1, "stopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->stopLoading()V

    return-void
.end method

.method public super_awakenScrollBars(IZ)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public updateMultiTouchZoomSupport()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->updateMultiTouchZoomSupport()V

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomOut()Z

    move-result v0

    return v0
.end method

.method public zoomReset()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomReset()Z

    move-result v0

    return v0
.end method
