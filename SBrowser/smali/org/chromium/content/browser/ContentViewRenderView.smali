.class public Lorg/chromium/content/browser/ContentViewRenderView;
.super Landroid/widget/FrameLayout;
.source "ContentViewRenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final TAG:Ljava/lang/String; = "ContentViewRenderView"


# instance fields
.field private mCurrentContentView:Lorg/chromium/content/browser/ContentView;

.field private mIsSurfaceReady:Z

.field private mNativeContentViewRenderView:I

.field private mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

.field private mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

.field private mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVSyncAdapter:Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mIsSurfaceReady:Z

    invoke-static {}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    const-string v0, "VerificationLog"

    const-string v1, "Load lib Completed as nativeInit() call is resolved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;-><init>(Lorg/chromium/content/browser/ContentViewRenderView;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    new-instance v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewRenderView;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceHolderEventListner(Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSbrContentViewRenderView()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->setSurfaceChangeListener(Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewRenderView;->createSurfaceView(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v0, Lorg/chromium/content/browser/ContentViewRenderView$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewRenderView$1;-><init>(Lorg/chromium/content/browser/ContentViewRenderView;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mVSyncAdapter:Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewRenderView;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewRenderView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceSetSize(III)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentViewRenderView;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentViewRenderView;ILandroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceCreated(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/ContentViewRenderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mIsSurfaceReady:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ContentViewRenderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceDestroyed(I)V

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private static native nativeInit()I
.end method

.method private native nativeSetCurrentContentView(II)V
.end method

.method private native nativeSurfaceCreated(ILandroid/view/Surface;)V
.end method

.method private native nativeSurfaceDestroyed(I)V
.end method

.method private native nativeSurfaceSetSize(III)V
.end method


# virtual methods
.method protected createSurfaceView(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 3

    const-string v1, "VerificationLog"

    const-string v2, "ContentViewRenderView - createSurfaceView -- Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v1, "VerificationLog"

    const-string v2, "ContentViewRenderView - createSurfaceView -- end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    return-void
.end method

.method public getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    return-object v0
.end method

.method public getSbrContentViewRenderView()Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    return-object v0
.end method

.method public getmCurrentContentView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method public getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    return-object v0
.end method

.method public getmPrevTabId()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getmPrevTabId()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceViewReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mIsSurfaceReady:Z

    return v0
.end method

.method protected onReadyToRender()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const-string v0, "VerificationLog"

    const-string v1, "Calling ContentViewRenderView : onSizeChanged - begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const-string v0, "ContentViewRenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged: Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Old Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Old Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->processOnSizeChanged(II)V

    const-string v0, "VerificationLog"

    const-string v1, "Calling ContentViewRenderView : onSizeChanged - End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V
    .locals 4

    sget-boolean v1, Lorg/chromium/content/browser/ContentViewRenderView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const-string v1, "ContentViewRenderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentContentView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:I

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentViewCore()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSetCurrentContentView(II)V

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewRenderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewRenderView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->onPhysicalBackingSizeChanged(II)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mVSyncAdapter:Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mVSyncAdapter:Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->getVSyncListener(Lorg/chromium/content/browser/VSyncManager$Provider;)Lorg/chromium/content/browser/VSyncManager$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->setVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setContentChangeListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPHCVRVA:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    :cond_2
    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method

.method public setCurrentTabId(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mPlaceHolderAppController:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setCurrentTabId(I)V

    return-void
.end method
