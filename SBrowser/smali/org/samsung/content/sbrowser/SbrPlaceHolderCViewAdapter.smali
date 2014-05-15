.class public Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;
.super Ljava/lang/Object;
.source "SbrPlaceHolderCViewAdapter.java"

# interfaces
.implements Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;
.implements Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;
    }
.end annotation


# static fields
.field public static final STATE_DEFAULT_FULL_WHITE:I = 0x2

.field public static final STATE_FLUSH_BITMAP:I = 0x1

.field public static final STATE_FULL_BITMAP:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field heightCache:F

.field private mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

.field private mCurrentBitmapState:I

.field private mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

.field private mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

.field private mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field metrics:Landroid/util/DisplayMetrics;

.field private sConfigChangedStatus:Z

.field widthCache:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentViewRenderView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCurrentBitmapState:I

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->widthCache:F

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->metrics:Landroid/util/DisplayMetrics;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->sConfigChangedStatus:Z

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;-><init>(Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bringPlaceHolderFront()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public captureAndStorePlaceHolder()V
    .locals 0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->refreshBitMap()V

    return-void
.end method

.method public clearBitmapCache()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->clearBitmapCache()V

    return-void
.end method

.method public configHasChanged(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->widthCache:F

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setConfigChangedStatus(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;->configHasChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->prepareAndShowPlaceHolderIfNeeded(II)V

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromCompositor()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getFullBitmapFromCompositor()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigChangedStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->sConfigChangedStatus:Z

    return v0
.end method

.method public getPlaceholderView()Lorg/samsung/content/sbrowser/SbrPlaceHolderView;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    return-object v0
.end method

.method public getPlaceholderViewAreaState()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCurrentBitmapState:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hidePlaceHolder()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;->placeholderAboutToHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->hide()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->clearBitmapCache()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;->placeholderHidden()V

    :cond_0
    return-void
.end method

.method public onContentSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->destroy()V

    return-void
.end method

.method public prepareAndShowPlaceHolderIfNeeded(II)V
    .locals 4

    const/4 v3, 0x4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v1, p1, p2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->prepareAndShowPlaceHolderIfNeeded(II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->refreshBitMap()V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->refreshBitMap()V

    :cond_2
    invoke-virtual {p0, v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->show()V

    return-void
.end method

.method public processOnSizeChanged(II)V
    .locals 4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float/2addr v1, v0

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->widthCache:F

    int-to-float v1, p2

    div-float/2addr v1, v0

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getConfigChangedStatus()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLOGS: processOnSizeChanged w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->prepareAndShowPlaceHolderIfNeeded(II)V

    :cond_0
    return-void
.end method

.method public refreshBitMap()V
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    invoke-interface {v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;->shouldRefreshBitmap()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getBitmapFromCompositor()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->storeBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public resetBitMap()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->clearBitmapCache()V

    return-void
.end method

.method public setConfigChangedStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->sConfigChangedStatus:Z

    return-void
.end method

.method public setContentChangedListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmCurrentContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmCurrentContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setContentChangeListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V

    goto :goto_0
.end method

.method public setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-void
.end method

.method public setPlaceHolderEventListner(Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    return-void
.end method

.method public setPlaceholderViewAreaState(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCurrentBitmapState:I

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->shouldTranslatePlaceHolderView()V

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->bringPlaceHolderFront()V

    sget-object v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS:PlaceHolder is already shown... bringing PlaceHolder to Front"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->TAG:Ljava/lang/String;

    const-string v1, "APPLOGS:PlaceHolder is not shown... showing PlaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->invalidate()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->bringPlaceHolderFront()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPlaceholderView:Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->show()V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mPHEventListner:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;->placeholderShown()V

    goto :goto_0
.end method

.method public showPlaceHolder()V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->refreshBitMap()V

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->show()V

    return-void
.end method

.method public showPlaceHolderWithBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->storeBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->show()V

    return-void
.end method

.method public storeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mModel:Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderModel;->storeBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->widthCache:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    int-to-float v1, p3

    div-float/2addr v1, v0

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->widthCache:F

    :cond_0
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    int-to-float v1, p4

    div-float/2addr v1, v0

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->showPlaceHolder()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->mCVRV:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public updateFrameInfo(FFFFFFFFFFFF)V
    .locals 4

    mul-float v0, p3, p9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    add-float v2, v0, p11

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    add-float v2, v0, p11

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    add-float v2, v0, p11

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    const/high16 v2, 0x4000

    mul-float/2addr v2, p11

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    const/high16 v2, 0x4000

    mul-float/2addr v2, p11

    add-float/2addr v2, v0

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    const/high16 v2, 0x4000

    mul-float/2addr v2, p11

    add-float/2addr v2, v0

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->heightCache:F

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->hidePlaceHolder()V

    :cond_1
    return-void
.end method
