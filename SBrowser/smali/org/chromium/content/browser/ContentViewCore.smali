.class public Lorg/chromium/content/browser/ContentViewCore;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;
.implements Lorg/chromium/content/browser/NavigationClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;,
        Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;,
        Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;,
        Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EDMTAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field static final FEEDBACK_SCROLL_STATE_ABORT:I = 0x3

.field static final FEEDBACK_SCROLL_STATE_FLING:I = 0x2

.field static final FEEDBACK_SCROLL_STATE_FLING_END:I = 0x4

.field static final FEEDBACK_SCROLL_STATE_FLING_END_BOUNCE:I = 0x5

.field static final FEEDBACK_SCROLL_STATE_IDLE:I = 0x0

.field static final FEEDBACK_SCROLL_STATE_SCROLL:I = 0x1

.field private static final IS_LONG_PRESS:I = 0x1

.field private static final IS_LONG_TAP:I = 0x2

.field public static final PERSONALITY_CHROME:I = 0x1

.field public static final PERSONALITY_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEXT_HANDLE_FADE_IN_DELAY:I = 0x12c

.field private static final ZOOM_CONTROLS_EPSILON:F = 0.0070f

.field private static gestureDetected:Z

.field private static lastFrameTimeMicros:J

.field public static mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

.field public static user_tapped_pressed:Z


# instance fields
.field private mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

.field private mAccessibilityStateObserver:Landroid/database/ContentObserver;

.field public mActionMode:Landroid/view/ActionMode;

.field private mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

.field private mAirViewMaster:Z

.field public mAttachedToWindow:Z

.field private mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

.field private mCallNativeGainFocus:Z

.field public mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

.field private mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

.field private mContentHeight:F

.field private mContentSettings:Lorg/chromium/content/browser/ContentSettings;

.field private mContentViewAnchorFirstState:Z

.field private mContentViewAnchorRectDip:Landroid/graphics/Rect;

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private mContentViewFocusRectDip:Landroid/graphics/Rect;

.field private mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

.field private mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

.field private mContext:Landroid/content/Context;

.field private mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

.field private mDidSignalVSyncUsingInputEvent:Z

.field private mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

.field public final mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

.field private mFakeMouseMoveRunnable:Ljava/lang/Runnable;

.field protected mFeedbackScrollState:I

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private final mFocusPreOSKViewportRect:Landroid/graphics/Rect;

.field private mHardwareAccelerated:Z

.field private mHasSelection:Z

.field private mIgnoreNavigationStatus:Z

.field public mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mInForeground:Z

.field public mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field public mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

.field private final mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

.field private mIsConfigurationChanged:Z

.field public mIsPasswordType:Z

.field private final mJavaScriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedText:Ljava/lang/String;

.field private mNativeContentViewCore:I

.field private mNativeSizeUpdateFlag:Z

.field private mNeedUpdateOrientationChanged:Z

.field private mOverdrawBottomHeightPix:I

.field private mPageScaleFactor:F

.field private mPendingRendererFrame:Z

.field private final mPersonality:I

.field private mPhysicalBackingHeightPix:I

.field private mPhysicalBackingWidthPix:I

.field private mPinchGestureStateListener:Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;

.field private mPopUpZoomerDisplay:Z

.field private mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

.field mPrevContentOffsetYPix:F

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private final mRetainedJavaScriptObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field mSbrFindOnPage:Lorg/samsung/content/sbrowser/SbrFindOnPage;

.field private mScrolledAndZoomedFocusedEditableNode:Z

.field public mSelectionEditable:Z

.field public mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

.field public mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

.field public mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

.field public final mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

.field private mToolBarTouchEventDelegate:Z

.field private mUnfocusOnNextSizeChanged:Z

.field private mUnselectAllOnActionModeDismiss:Z

.field public mUpdateFrameInfoCalled:I

.field private mUpdatedScrollOffset:F

.field private mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

.field private mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

.field private mVSyncListenerRegistered:Z

.field private mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

.field private mVSyncSubscriberCount:I

.field private mViewAndroid:Lorg/chromium/ui/ViewAndroid;

.field private mViewSizeUpdateFlag:Z

.field private mViewportHeight:F

.field private mViewportHeightPix:I

.field private mViewportSizeOffsetHeightPix:I

.field private mViewportSizeOffsetWidthPix:I

.field private mViewportWidthPix:I

.field private mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

.field private mZoomManager:Lorg/chromium/content/browser/ZoomManager;

.field private mscrollChanged:Z

.field oldContentWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    sput-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->gestureDetected:Z

    sput-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->user_tapped_pressed:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/chromium/content/browser/ContentViewCore;->lastFrameTimeMicros:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mUpdatedScrollOffset:F

    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentHeight:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPageScaleFactor:F

    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeight:F

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorFirstState:Z

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsConfigurationChanged:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInForeground:Z

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->oldContentWidth:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUpdateFrameInfoCalled:I

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewSizeUpdateFlag:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mToolBarTouchEventDelegate:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAirViewMaster:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAttachedToWindow:Z

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnfocusOnNextSizeChanged:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mScrolledAndZoomedFocusedEditableNode:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHardwareAccelerated:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPendingRendererFrame:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsPasswordType:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopUpZoomerDisplay:Z

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPrevContentOffsetYPix:F

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIgnoreNavigationStatus:Z

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mscrollChanged:Z

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/chromium/base/WeakContext;->initializeWeakContext(Landroid/content/Context;)V

    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPersonality:I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/HeapStatsLogger;->init(Landroid/content/Context;)V

    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    new-instance v0, Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v0}, Lorg/chromium/content/browser/RenderCoordinates;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->setDeviceScaleFactor(F)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    return-void
.end method

.method private OnLongTimeRequiredForBeginFrame(Z)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setLongBeginFrameTime(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setLongBeginFrameTime(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewCore;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewCore;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/ContentViewCore;->nativeUpdateVSyncParameters(IJJ)V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ContentViewCore;)Lorg/samsung/content/sbrowser/SbrContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewGestureHandler;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ContentViewCore;IJFFZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(IJFFZ)V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/ContentViewCore;IJFFZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(IJFFZ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/ContentViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollFocusedEditableNodeIntoView(I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/chromium/content/browser/ContentViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeUndoScrollFocusedEditableNodeIntoView(I)V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/ContentViewCore;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->nativeMoveCaret(IFF)V

    return-void
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideHandles()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDidSignalVSyncUsingInputEvent:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/content/browser/ContentViewCore;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDidSignalVSyncUsingInputEvent:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->scheduleTextHandleFadeIn()V

    return-void
.end method

.method static synthetic access$2200(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionHandleShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentViewCore;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnVSync(IJ)V

    return-void
.end method

.method static synthetic access$402(J)J
    .locals 0

    sput-wide p0, Lorg/chromium/content/browser/ContentViewCore;->lastFrameTimeMicros:J

    return-wide p0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isInsertionHandleShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PopupZoomer;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ContentViewCore;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private addToNavigationHistory(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/NavigationEntry;

    const/4 v6, 0x0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/NavigationEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    check-cast p1, Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/NavigationHistory;->addEntry(Lorg/chromium/content/browser/NavigationEntry;)V

    return-void
.end method

.method private confirmTouchEvent(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->confirmTouchEvent(I)V

    return-void
.end method

.method private createImeAdapter(Landroid/content/Context;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 4

    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v2

    new-instance v3, Lorg/chromium/content/browser/ContentViewCore$3;

    invoke-direct {v3, p0}, Lorg/chromium/content/browser/ContentViewCore$3;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/SelectionHandleController;Lorg/chromium/content/browser/input/InsertionHandleController;Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;)V

    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static destroyIncognitoProfile()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/ContentViewCore;->nativeDestroyIncognitoProfile()V

    return-void
.end method

.method private handleTapOrPress(JFFIZ)V
    .locals 12

    const/4 v1, 0x1

    sput-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->user_tapped_pressed:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isToolbarVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v2

    add-float v2, v2, p4

    invoke-virtual {v1, p3, v2}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_2
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move/from16 v0, p4

    invoke-virtual {v1, p3, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setCopyImageCoOrdinates(FF)V

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move/from16 v0, p4

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setForLongPressAfterConfirmation(JFF)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v8, v1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v1

    add-float v1, v1, p4

    float-to-int v9, v1

    int-to-float v1, v8

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v10, v1

    int-to-float v1, v9

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v11, v1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1, v10, v11}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->checkBelongToSelection(II)V

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->allowAutomaticShowing()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-nez v1, :cond_4

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_4

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(IJFFZ)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onLongPress()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    move/from16 v0, p4

    invoke-virtual {v1, p3, v0}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->allowAutomaticShowing()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_4

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(IJFFZ)V

    goto :goto_1

    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->allowAutomaticShowing()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_9

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongTap(IJFFZ)V

    :cond_9
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onLongTap()V

    goto :goto_2

    :cond_a
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    :cond_b
    if-nez p6, :cond_c

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_c

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeShowPressState(IJFF)V

    :cond_c
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->allowAutomaticShowing()V

    :cond_d
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v1

    iget-wide v1, v1, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventDownTime:J

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-wide v3, v3, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewExitEventTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v1

    iget-wide v1, v1, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventDownTime:J

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-wide v3, v3, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewExitDownTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    :cond_e
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(IJFFZ)V

    goto/16 :goto_2

    :cond_f
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getPopUpZoomerFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(IJFFZ)V

    goto/16 :goto_2
.end method

.method public static hasHardwareAcceleration(Landroid/app/Activity;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v5, v1, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Chrome"

    const-string v5, "getActivityInfo(self) should not fail"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static hasHardwareAcceleration(Landroid/content/Context;)Z
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasHardwareAcceleration(Landroid/app/Activity;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasTouchEventHandlers(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->hasTouchEventHandlers(Z)V

    return-void
.end method

.method private hideHandles()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_1
    return-void
.end method

.method private initPopupZoomer(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {v1, p1, p0}, Lorg/chromium/content/browser/PopupZoomer;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$6;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$7;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$7;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V

    return-void
.end method

.method private initializeContainerView(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPersonality:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/ZoomManager;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lorg/chromium/content/browser/ZoomManager;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->updateMultiTouchSupport()V

    new-instance v0, Lorg/chromium/content/browser/ContentViewGestureHandler;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-direct {v0, v1, p0, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;Lorg/chromium/content/browser/ZoomManager;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentSettings;->getDisplayZoomControls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setDisplayZoomControls(Z)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->reset()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->createImeAdapter(Landroid/content/Context;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setImeAdapter(Lorg/chromium/content/browser/input/ImeAdapter;)V

    :cond_2
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void
.end method

.method private isEnterActionKey(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInsertionHandleShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectionHandleShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVSyncNotificationEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeAttachExternalVideoSurface(IILandroid/view/Surface;)V
.end method

.method private native nativeCanGoBack(I)Z
.end method

.method private native nativeCanGoForward(I)Z
.end method

.method private native nativeCanGoToOffset(II)Z
.end method

.method private native nativeCancelPendingReload(I)V
.end method

.method private native nativeClearHistory(I)V
.end method

.method private native nativeClearSslPreferences(I)V
.end method

.method private native nativeContinuePendingReload(I)V
.end method

.method private native nativeCrashed(I)Z
.end method

.method public static native nativeDestroyIncognitoProfile()V
.end method

.method private native nativeDetachExternalVideoSurface(II)V
.end method

.method private native nativeDoubleTap(IJFF)V
.end method

.method private native nativeEvaluateJavaScript(ILjava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V
.end method

.method private native nativeExitFullscreen(I)V
.end method

.method private native nativeFlingCancel(IJ)V
.end method

.method private native nativeFlingStart(IJFFFF)V
.end method

.method private native nativeGetBackgroundColor(I)I
.end method

.method private native nativeGetCurrentRenderProcessId(I)I
.end method

.method private native nativeGetDirectedNavigationHistory(ILjava/lang/Object;ZI)V
.end method

.method private native nativeGetNativeImeAdapter(I)I
.end method

.method private native nativeGetNavigationHistory(ILjava/lang/Object;)I
.end method

.method private native nativeGetOriginalUrlForActiveNavigationEntry(I)Ljava/lang/String;
.end method

.method private native nativeGetTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetURL(I)Ljava/lang/String;
.end method

.method private native nativeGetUseDesktopUserAgent(I)Z
.end method

.method private native nativeGoBack(I)V
.end method

.method private native nativeGoForward(I)V
.end method

.method private native nativeGoToNavigationIndex(II)V
.end method

.method private native nativeGoToOffset(II)V
.end method

.method private native nativeHideUrlBarEnabled(IZ)V
.end method

.method private native nativeInit(ZIII)I
.end method

.method private native nativeIsIncognito(I)Z
.end method

.method private native nativeIsRenderWidgetHostViewReady(I)Z
.end method

.method private native nativeIsShowingInterstitialPage(I)Z
.end method

.method private native nativeLoadUrl(ILjava/lang/String;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativeLongPress(IJFFZ)V
.end method

.method private native nativeLongTap(IJFFZ)V
.end method

.method private native nativeMoveCaret(IFF)V
.end method

.method private native nativeNeedToUpdateFrameInfo(IZ)V
.end method

.method private native nativeNeedsReload(I)Z
.end method

.method private native nativeNotifyHWKeyBoardActiveStatus(IZ)V
.end method

.method private native nativeOnHide(I)V
.end method

.method private native nativeOnJavaContentViewCoreDestroyed(I)V
.end method

.method private native nativeOnShow(I)V
.end method

.method private native nativeOnVSync(IJ)V
.end method

.method private native nativePinchBegin(IJFF)V
.end method

.method private native nativePinchBy(IJFFFZ)V
.end method

.method private native nativePinchEnd(IJ)V
.end method

.method private native nativePopulateBitmapFromCompositor(ILandroid/graphics/Bitmap;)Z
.end method

.method private native nativeReload(I)V
.end method

.method private native nativeRemoveJavascriptInterface(ILjava/lang/String;)V
.end method

.method private native nativeResetTabState(I)V
.end method

.method private native nativeScrollBegin(IJFF)V
.end method

.method private native nativeScrollBy(IJFFFFZ)V
.end method

.method private native nativeScrollEnd(IJ)V
.end method

.method private native nativeScrollFocusedEditableNodeIntoView(I)V
.end method

.method private native nativeSelectPopupMenuItems(I[I)V
.end method

.method private native nativeSendMouseMoveEvent(IJFF)I
.end method

.method private native nativeSendMouseWheelEvent(IJFFF)I
.end method

.method private native nativeSendOrientationChangeEvent(II)V
.end method

.method private native nativeSendTouchEvent(IJI[Lorg/chromium/content/browser/TouchPoint;)Z
.end method

.method private native nativeSetBackgroundColor(II)V
.end method

.method private native nativeSetFocus(IZ)V
.end method

.method private native nativeSetTopControlsHeight(II)V
.end method

.method private native nativeSetUseDesktopUserAgent(IZZ)V
.end method

.method private native nativeShowImeIfNeeded(I)V
.end method

.method private native nativeShowInterstitialPage(ILjava/lang/String;I)V
.end method

.method private native nativeShowPressCancel(IJFF)V
.end method

.method private native nativeShowPressState(IJFF)V
.end method

.method private native nativeSingleTap(IJFFZ)V
.end method

.method private native nativeStopLoading(I)V
.end method

.method private native nativeUndoScrollFocusedEditableNodeIntoView(I)V
.end method

.method private native nativeUpdateTopControlsState(IZZZ)V
.end method

.method private native nativeUpdateVSyncParameters(IJJ)V
.end method

.method private native nativeWasResized(I)V
.end method

.method private notifyGeometryChange(IFFFF)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v7

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v1

    mul-float/2addr v1, p3

    invoke-virtual {v7, v0, v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    add-float v0, p2, p4

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    add-float v1, p3, p5

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v2

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v3

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v1

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v4

    sub-float v4, v1, v4

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v1

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v5

    sub-float v5, v1, v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewClient;->onGeometryChanged(IFFFF)V

    return-void
.end method

.method private onBackgroundColorChanged(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onBackgroundColorChanged(I)V

    return-void
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-interface {p1, p0}, Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    return-void
.end method

.method private onFlingAnimationCompleted(Z)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->performHaptic(I)V

    :goto_0
    iput v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-boolean v2, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForFling:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->fadeinHandleIfNeeded()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->performHaptic(I)V

    goto :goto_0
.end method

.method private onSSRMModeCallback(I)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_V8:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setDashmode(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;I)V

    return-void
.end method

.method private onSelectionBoundsChanged(Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V
    .locals 15
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorFirstState:Z

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v11, v12, :cond_0

    if-eq v13, v14, :cond_c

    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/InsertionHandleController;->hide()V

    :cond_1
    if-eqz p5, :cond_2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    int-to-float v6, v11

    int-to-float v7, v13

    invoke-virtual {v3, v6, v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    int-to-float v6, v12

    int-to-float v7, v14

    invoke-virtual {v3, v6, v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v6

    if-ne v3, v6, :cond_b

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isLinkify(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    int-to-float v6, v12

    int-to-float v7, v14

    invoke-virtual {v3, v6, v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    int-to-float v6, v11

    int-to-float v7, v13

    invoke-virtual {v3, v6, v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    iget-boolean v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->setSelectionPositionParameters(Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v6, v6, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v7, v7, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSpenTextSelectionMode:Z

    invoke-virtual {v3, v6, v7}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionZoomerIfRequired(ZZ)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAccessibilityTalkBackisEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    :cond_4
    :goto_2
    const/4 v8, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/ImeAdapter;->isKeypadShownInContentView()Z

    move-result v8

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lorg/chromium/content/browser/ContentViewCore;->gestureDetected:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v3, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    const/16 v6, 0x12c

    invoke-virtual {v3, v6}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    :cond_6
    const/4 v3, 0x1

    sput-boolean v3, Lorg/chromium/content/browser/ContentViewCore;->gestureDetected:Z

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/ContentViewCore;->needToUpdateFrameInfo(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v3, v3, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v3, v3, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getCurrentGestureType()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_a

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->isDragging()Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsConfigurationChanged:Z

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showSelectionHandles()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsConfigurationChanged:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsConfigurationChanged:Z

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isContentViewBeingTouched()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v3, v3, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionHandleShowing()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSelectionFromLongPress(Z)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->onSelectionChanged(II)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    goto/16 :goto_2

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v9

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    if-eqz v11, :cond_12

    if-eqz v13, :cond_12

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v3, :cond_12

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    :cond_f
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    int-to-float v6, v11

    int-to-float v7, v13

    invoke-virtual {v3, v6, v7}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/ImeAdapter;->isFinishComposing()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/InsertionHandleController;->onCursorPositionChanged()V

    :cond_10
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "input_method"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v3

    float-to-int v4, v3

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v3

    float-to-int v5, v3

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    move v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    :cond_11
    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    goto/16 :goto_2

    :cond_12
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_13
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    goto :goto_3
.end method

.method private onSelectionChanged(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onSelectionChanged(Ljava/lang/String;)V

    return-void
.end method

.method private onTabCrash()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onTabCrash()V

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    :cond_0
    return-void
.end method

.method private onWebContentsConnected()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isNativeImeAdapterAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(I)V

    :cond_0
    return-void
.end method

.method private onWebContentsSwapped()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(I)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onWebContentsSwapped()V

    return-void
.end method

.method private processImeBatchStateAck(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setIgnoreTextInputStateUpdates(Z)V

    goto :goto_0
.end method

.method private requestExternalVideoSurface(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onExternalVideoSurfaceRequested(I)V

    return-void
.end method

.method private scheduleTextHandleFadeIn()V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isInsertionHandleShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionHandleShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$15;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$15;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendOrientationChangeEvent()V
    .locals 3

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v2, "Unknown rotation!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(II)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/16 v2, 0xb4

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(II)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/16 v2, -0x5a

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(II)V

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onUpdateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static setWebDialog(Lorg/samsung/content/sbrowser/SbrWebSelectDialog;)V
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    return-void
.end method

.method private showDisambiguationPopup(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/PopupZoomer;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;->show(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopUpZoomerDisplay:Z

    return-void
.end method

.method private showPastePopup(II)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandle()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandleWithPastePopup()V

    goto :goto_0
.end method

.method private showSelectActionBar()V
    .locals 5

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$14;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$14;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeIsIncognito(I)Z

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lorg/chromium/content/browser/ContentViewClient;->getSelectActionModeCallback(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)Landroid/view/ActionMode$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarShown()V

    goto :goto_0
.end method

.method private showSelectPopup([Ljava/lang/String;[IZ[I)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/SelectPopupDialog;->show(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V

    return-void
.end method

.method private startContentIntent(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getLinkifytFlag()Z

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mailto:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "geo:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v2, Lcom/sec/android/app/sbrowser/common/UrlHandler;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/common/UrlHandler;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->contentViewMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->shouldOverrideUrlLoading(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/chromium/content/browser/ContentViewClient;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private temporarilyHideTextHandles()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionHandleShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->setHandleVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isInsertionHandleShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->setHandleVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->scheduleTextHandleFadeIn()V

    return-void
.end method

.method private undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V
    .locals 2

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mScrolledAndZoomedFocusedEditableNode:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_0

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$9;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$9;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mScrolledAndZoomedFocusedEditableNode:Z

    return-void
.end method

.method private updateAfterSizeChanged()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/ContentViewCore;->popUpZoomerHide(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v5, v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionHandleShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNeedUpdateOrientationChanged:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->sendOrientationChangeEvent()V

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->isKeypadShownInContentView()Z

    move-result v0

    :cond_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    :cond_3
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNeedUpdateOrientationChanged:Z

    :cond_4
    return-void

    :cond_5
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnfocusOnNextSizeChanged:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v5}, Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnfocusOnNextSizeChanged:Z

    goto :goto_0
.end method

.method private updateFrameInfo(FFFFFFFFFFFF)V
    .locals 37
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mUpdateFrameInfoCalled:I

    sget v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SOFT_BITMAP_UPDATE_FRAMEINFO_DELAY:I

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mUpdateFrameInfoCalled:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mUpdateFrameInfoCalled:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v2

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v2

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v2

    cmpl-float v2, p6, v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v2

    cmpl-float v2, p7, v2

    if-eqz v2, :cond_19

    :cond_1
    const/16 v27, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v2

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v2

    cmpl-float v2, p5, v2

    if-eqz v2, :cond_1a

    :cond_2
    const/16 v35, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v2

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_1b

    const/16 v34, 0x1

    :goto_2
    if-nez v34, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v2

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_1c

    :cond_3
    const/16 v36, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    cmpl-float v2, v12, v2

    if-eqz v2, :cond_1d

    const/16 v26, 0x1

    :goto_4
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mscrollChanged:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move/from16 v0, v26

    invoke-interface {v2, v12, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->hideOrShowBasedOnScroll(FZ)V

    :cond_4
    if-nez v27, :cond_5

    if-eqz v36, :cond_1e

    :cond_5
    const/16 v30, 0x1

    :goto_5
    if-nez v35, :cond_6

    if-eqz v36, :cond_1f

    :cond_6
    const/16 v32, 0x1

    :goto_6
    move/from16 v31, v36

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->hideAnimatedView()V

    :cond_7
    if-eqz v30, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->popUpZoomerHide(Z)V

    :cond_8
    if-eqz v36, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->onScrollChanged(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    invoke-interface {v2, v3}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->performHaptic(I)V

    :cond_9
    if-eqz v34, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v3

    move/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/chromium/content/browser/ContentViewClient;->onScaleChanged(FF)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v12}, Lorg/chromium/content/browser/RenderCoordinates;->updateFrameInfo(FFFFFFFFFF)V

    if-nez v36, :cond_b

    if-eqz v34, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorFirstState:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    :cond_d
    :goto_7
    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v3

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    iget-object v2, v2, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    iget-object v2, v2, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectedTextVisible()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectAllEnable()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    iget-object v2, v2, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->hide()V

    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mContentHeight:F

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mPageScaleFactor:F

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->setUpdateFrameInfoReceived(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mUpdatedScrollOffset:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_21

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mUpdatedScrollOffset:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->setLastUpdateFrameInfoReceived(F)V

    :cond_10
    :goto_8
    if-eqz v31, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->temporarilyHideTextHandles()V

    :cond_11
    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ZoomManager;->updateZoomControls()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v29

    mul-float v28, p10, v29

    mul-float v33, p12, v29

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    move/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v2, v0, v12, v1}, Lorg/chromium/content/browser/ContentViewClient;->onOffsetsForFullscreenChanged(FFF)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mPendingRendererFrame:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    move/from16 v23, p10

    move/from16 v24, p11

    move/from16 v25, p12

    invoke-interface/range {v13 .. v25}, Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;->updateFrameInfo(FFFFFFFFFFFF)V

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->oldContentWidth:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->oldContentWidth:F

    cmpl-float v2, v2, p6

    if-eqz v2, :cond_15

    :cond_14
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/ContentViewCore;->oldContentWidth:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    :cond_15
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureTopControlSupportFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v26, :cond_18

    const/4 v2, 0x0

    cmpl-float v2, p11, v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getFromDipToPix(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->updateHandlePositions()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showSelectionHandles()V

    :cond_17
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->isInsertionHandleShowing()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/input/InsertionHandleController;->setHandlePosition(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandleWithPastePopup()V

    :cond_18
    return-void

    :cond_19
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_1a
    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_1b
    const/16 v34, 0x0

    goto/16 :goto_2

    :cond_1c
    const/16 v36, 0x0

    goto/16 :goto_3

    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_4

    :cond_1e
    const/16 v30, 0x0

    goto/16 :goto_5

    :cond_1f
    const/16 v32, 0x0

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewFocusRectDip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewAnchorRectDip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setLocalDip(FF)V

    goto/16 :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move/from16 v0, p7

    float-to-int v3, v0

    move/from16 v0, p9

    float-to-int v4, v0

    move/from16 v0, p3

    invoke-interface {v2, v3, v4, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->checkForViewPortPage(IIF)V

    goto/16 :goto_8
.end method

.method private updateImeAdapter(IILjava/lang/String;IIIIZ)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputTypeNone()I

    move-result v0

    if-eq p2, v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getToolBarFlag()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputTypePassword()I

    move-result v0

    if-ne p2, v0, :cond_4

    :goto_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsPasswordType:Z

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->attachAndShowIfNeeded(IIIIZ)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setEditableText(Ljava/lang/String;IIII)V

    :cond_2
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateTextHandlesForGesture(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->temporarilyHideTextHandles()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private zoomByDelta(F)Z
    .locals 6

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBegin(JII)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBy(JIIF)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchEnd(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public SbrPressState(IIJ)V
    .locals 6

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeShowPressState(IJFF)V

    return-void
.end method

.method public ScrollOnMainThread()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->ScrollOnMainThread()V

    :cond_0
    return-void
.end method

.method public SetContentTopOffset(F)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/JavascriptInterface;

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method public attachExternalVideoSurface(ILandroid/view/Surface;)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeAttachExternalVideoSurface(IILandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_awakenScrollBars(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeCanGoBack(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeCanGoForward(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoToOffset(I)Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeCanGoToOffset(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    const v1, 0x3be56042

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    const v1, 0x3be56042

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPendingReload()V
    .locals 2

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "cancelPendingReload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeCancelPendingReload(I)V

    :cond_0
    return-void
.end method

.method checkIsAlive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContentView used after destroy() was called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeClearHistory(I)V

    :cond_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeClearSslPreferences(I)V

    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result v0

    return v0
.end method

.method public consumePendingRendererFrame()Z
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPendingRendererFrame:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPendingRendererFrame:Z

    return v0
.end method

.method public continuePendingReload()V
    .locals 2

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "continuePendingReload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeContinuePendingReload(I)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    sget-wide v1, Lorg/chromium/content/browser/ContentViewCore;->lastFrameTimeMicros:J

    const-wide/16 v3, 0x3e80

    add-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnVSync(IJ)V

    const-string v0, "VSYNC"

    const-string v1, "force vsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->contentViewMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->destroy()V

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnJavaContentViewCoreDestroyed(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetVSyncNotification()V

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/ViewAndroid;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/ViewAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/ViewAndroid;->destroy()V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public detachExternalVideoSurface(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeDetachExternalVideoSurface(II)V

    :cond_0
    return-void
.end method

.method public detachObserversFromWebContents()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->detachFromWebContents()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->detachFromWebContents()V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentSettings;->destroyNative()V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->destroyNative()V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    :cond_3
    return-void
.end method

.method public didUIStealScroll(FF)Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/chromium/content/browser/ContentViewClient;->shouldOverrideScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onBackKeyHideAirViewMagnifier()V

    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v2, :cond_1

    sget-object v2, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent, Calling nativeSetFocus: isFocussed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(IZ)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->isEnterActionKey(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onEnterKeyAction(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x87

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->reload()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x34

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x32

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1, v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->handleKeyBoardSelection(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEventCommon(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEventCommon(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->handleCtrlKeyPress(Landroid/view/KeyEvent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnfocusOnNextSizeChanged:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setSoftKeyboard(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    throw v0
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->checkIsAlive()V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeEvaluateJavaScript(ILjava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeExitFullscreen(I)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, -0x7fffffff

    const/high16 v4, -0x8000

    neg-int v5, p1

    neg-int v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->fling(JIIII)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetBackgroundColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v3, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativePopulateBitmapFromCompositor(ILandroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, p1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentHeightCss()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    return v0
.end method

.method public getContentHeightPix()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPix()F

    move-result v0

    return v0
.end method

.method public getContentSettings()Lorg/chromium/content/browser/ContentSettings;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    return-object v0
.end method

.method public getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method public getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    return-object v0
.end method

.method public getContentWidthCss()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    return v0
.end method

.method public getContentWidthPix()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPix()F

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTopControlOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureTopControlSupportFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isHideURLFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method public getDirectedNavigationHistory(ZI)Lorg/chromium/content/browser/NavigationHistory;
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/NavigationHistory;

    invoke-direct {v0}, Lorg/chromium/content/browser/NavigationHistory;-><init>()V

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetDirectedNavigationHistory(ILjava/lang/Object;ZI)V

    return-object v0
.end method

.method getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-object v0
.end method

.method public getEditableForTest()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrFindOnPage:Lorg/samsung/content/sbrowser/SbrFindOnPage;

    return-object v0
.end method

.method public getFromDipToPix(F)F
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v0

    return v0
.end method

.method public getIgnoreNavigationStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mIgnoreNavigationStatus:Z

    return v0
.end method

.method public getImeAdapterForTest()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method public getInputConnectionForTest()Lorg/chromium/content/browser/input/AdapterInputConnection;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-object v0
.end method

.method public getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$13;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$13;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    return-object v0
.end method

.method public getInsertionHandleControllerForTest()Lorg/chromium/content/browser/input/InsertionHandleController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    return-object v0
.end method

.method public getLastSelectedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeContentOffsetYPix()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    return v0
.end method

.method public getNativeContentViewCore()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    return v0
.end method

.method public getNativeScrollXForTest()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public getNativeScrollXPix()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v0

    return v0
.end method

.method public getNativeScrollYForTest()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public getNativeScrollYPix()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v0

    return v0
.end method

.method public getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;
    .locals 3

    new-instance v1, Lorg/chromium/content/browser/NavigationHistory;

    invoke-direct {v1}, Lorg/chromium/content/browser/NavigationHistory;-><init>()V

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v2, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNavigationHistory(ILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/NavigationHistory;->setCurrentEntryIndex(I)V

    return-object v1
.end method

.method public getOriginalUrlForActiveNavigationEntry()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetOriginalUrlForActiveNavigationEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverdrawBottomHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverdrawBottomHeightPix:I

    return v0
.end method

.method public getPageContentHeight()F
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentHeight:F

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPageScaleFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPhysicalBackingHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    return v0
.end method

.method public getPhysicalBackingWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    return v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method public getSbrContentSettings()Lorg/samsung/content/sbrowser/SbrContentSettings;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    return-object v0
.end method

.method public getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    return v0
.end method

.method public getScaledPerformanceOptimizedBitmap(II)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    :cond_0
    int-to-float v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, p2

    div-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;
    .locals 5

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-nez v2, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/samsung/content/sbrowser/SbrContentViewCore;->contentViewMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {v2, v0}, Lorg/samsung/content/sbrowser/SelectionZoomer;-><init>(Lorg/chromium/content/browser/ContentView;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    new-instance v2, Lorg/samsung/content/sbrowser/SelectionHandler;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {v2, p0, v3}, Lorg/samsung/content/sbrowser/SelectionHandler;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/samsung/content/sbrowser/SelectionZoomer;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$11;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/ContentViewCore$11;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$12;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {v2, p0, v3, v4, v1}, Lorg/chromium/content/browser/ContentViewCore$12;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetTitle(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdatedScrollY()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUpdatedScrollOffset:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetURL(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetUseDesktopUserAgent(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVSyncListener(Lorg/chromium/content/browser/VSyncManager$Provider;)Lorg/chromium/content/browser/VSyncManager$Listener;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/VSyncManager$Provider;->unregisterVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$1;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncSubscriberCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    invoke-interface {p1, v0}, Lorg/chromium/content/browser/VSyncManager$Provider;->registerVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    return-object v0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/ViewAndroidDelegate;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$2;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method public getViewportHeight()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeight:F

    return v0
.end method

.method public getViewportHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    return v0
.end method

.method public getViewportSizeOffsetHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportSizeOffsetHeightPix:I

    return v0
.end method

.method public getViewportSizeOffsetWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportSizeOffsetWidthPix:I

    return v0
.end method

.method public getViewportWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    return v0
.end method

.method public getZoomControlsForTest()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->getZoomControlsViewForTest()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 2

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "ContentViewCore : goBack()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideKeypadIfShowing()V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGoBack(I)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->resetErrorPageFlag()V

    return-void
.end method

.method public goForward()V
    .locals 2

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "ContentViewCore : goForward()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideKeypadIfShowing()V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeGoForward(I)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->resetErrorPageFlag()V

    return-void
.end method

.method public goToNavigationIndex(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGoToNavigationIndex(II)V

    :cond_0
    return-void
.end method

.method public goToOffset(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGoToOffset(II)V

    :cond_0
    return-void
.end method

.method public hasFixedPageScale()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->hasFixedPageScale()Z

    move-result v0

    return v0
.end method

.method public hasFocus()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public hideKeypadIfShowing()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboardFromContentView()V

    :cond_0
    return-void
.end method

.method public hidePopupDialog()V
    .locals 2

    invoke-static {p0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->hide(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideHandles()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkifyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUrlHandler:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/UrlHandler;->linkifyDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method hideSelectActionBar()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;ILorg/chromium/ui/WindowAndroid;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewCore;->hasHardwareAcceleration(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mHardwareAccelerated:Z

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lorg/chromium/ui/WindowAndroid;->getNativePointer()I

    move-result v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Lorg/chromium/ui/ViewAndroid;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lorg/chromium/ui/ViewAndroidDelegate;

    move-result-object v5

    invoke-direct {v4, p4, v5}, Lorg/chromium/ui/ViewAndroid;-><init>(Lorg/chromium/ui/WindowAndroid;Lorg/chromium/ui/ViewAndroidDelegate;)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/ViewAndroid;

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/ViewAndroid;

    invoke-virtual {v4}, Lorg/chromium/ui/ViewAndroid;->getNativePointer()I

    move-result v1

    :cond_0
    iget-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mHardwareAccelerated:Z

    invoke-direct {p0, v4, p3, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeInit(ZIII)I

    move-result v4

    iput v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    new-instance v4, Lorg/chromium/content/browser/ContentSettings;

    iget v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {v4, p0, v5}, Lorg/chromium/content/browser/ContentSettings;-><init>(Lorg/chromium/content/browser/ContentViewCore;I)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    new-instance v4, Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-direct {v4, p3}, Lorg/samsung/content/sbrowser/SbrContentSettings;-><init>(I)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/ContentViewCore;->initializeContainerView(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v5

    if-ne v4, v5, :cond_1

    new-instance v4, Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-direct {v4, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    :cond_1
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->newInstance(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v4}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addOrRemoveAccessibilityApisIfNecessary()V

    const-string v0, "Web View"

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-direct {v4, p0, p0}, Lorg/chromium/content/browser/ContentViewCore$4;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;

    new-instance v4, Lorg/samsung/content/sbrowser/SbrFindOnPage;

    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p3}, Lorg/samsung/content/sbrowser/SbrFindOnPage;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrFindOnPage:Lorg/samsung/content/sbrowser/SbrFindOnPage;

    new-instance v4, Lorg/chromium/content/browser/ContentViewCore$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lorg/chromium/content/browser/ContentViewCore$5;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V

    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityStateObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_2
    move v2, v3

    goto/16 :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->invokeZoomPicker()V

    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCrashed()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeCrashed(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeIsIncognito(I)Z

    move-result v0

    return v0
.end method

.method public isInjectingAccessibilityScript()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v0

    return v0
.end method

.method public isMultiTouchZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->isMultiTouchZoomSupported()Z

    move-result v0

    return v0
.end method

.method isPersonalityView()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPersonality:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ContentView personality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPersonality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPopUpZoomer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopUpZoomerDisplay:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeIsRenderWidgetHostViewReady(I)Z

    move-result v0

    return v0
.end method

.method public isScrollChanged()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mscrollChanged:Z

    return v0
.end method

.method public isShowingInterstitialPage()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeIsShowingInterstitialPage(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isTextSelected()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    return v0
.end method

.method public isToolbarVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isViewPortPage()Z
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPix()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V
    .locals 11

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/chromium/content/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Content View loadUrl Security Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/chromium/content/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed - blocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->resetErrorPageFlag()V

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "loadUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    iget-object v2, p1, Lorg/chromium/content/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    iget v3, p1, Lorg/chromium/content/browser/LoadUrlParams;->mLoadUrlType:I

    iget v4, p1, Lorg/chromium/content/browser/LoadUrlParams;->mTransitionType:I

    iget v5, p1, Lorg/chromium/content/browser/LoadUrlParams;->mUaOverrideOption:I

    invoke-virtual {p1}, Lorg/chromium/content/browser/LoadUrlParams;->getExtraHeadersString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lorg/chromium/content/browser/LoadUrlParams;->mPostData:[B

    iget-object v8, p1, Lorg/chromium/content/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    iget-object v9, p1, Lorg/chromium/content/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    iget-boolean v10, p1, Lorg/chromium/content/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeLoadUrl(ILjava/lang/String;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Content View loadUrl Security Policy:SUCCEEDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/chromium/content/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeNotifyHWKeyBoardActiveStatus(IZ)V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeNotifyHWKeyBoardActiveStatus(IZ)V

    goto/16 :goto_0
.end method

.method public native nativeSelectBetweenCoordinates(IFFFF)V
.end method

.method public needToUpdateFrameInfo(Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeNeedToUpdateFrameInfo(IZ)V

    return-void
.end method

.method public needsReload()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeNeedsReload(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPause for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onActivityPause()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupDialog()V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnHide(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void
.end method

.method public onActivityResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResume for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnShow(I)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onActivityResume()V

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_master_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAirViewMaster:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mAttachedToWindow:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onAttachedToWindow()V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeNotifyHWKeyBoardActiveStatus(IZ)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->initializeToolBarLayerPosition()V

    :cond_1
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    return-void

    :cond_2
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeNotifyHWKeyBoardActiveStatus(IZ)V

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onConfigurationChanged()V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeNotifyHWKeyBoardActiveStatus(IZ)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(I)I

    move-result v2

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputTypeNone()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v5}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(IIII)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v1, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNeedUpdateOrientationChanged:Z

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsConfigurationChanged:Z

    sput-boolean v6, Lorg/chromium/content/browser/ContentViewCore;->gestureDetected:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAccessibilityTalkBackisEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->injectAccessibilityScriptIntoPage()V

    :cond_1
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void

    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1, v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeNotifyHWKeyBoardActiveStatus(IZ)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x200

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, v1, v2, p1}, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;->get(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAttachedToWindow:Z

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupDialog()V

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onDetachedFromWindow()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->dismissZoomPicker()V

    :cond_1
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChanged, Calling nativeSetFocus: gainFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isCtrlKeypressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->handleZoomInZoomOut(Landroid/view/MotionEvent;)V

    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$10;

    invoke-direct {v0, p0, v7}, Lorg/chromium/content/browser/ContentViewCore$10;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseWheelEvent(IJFFF)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHide()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHide for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInForeground:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetCurrentRenderProcessId(I)I

    move-result v0

    sget-object v1, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " calling unbindAsHighPriority from contentviewcore with pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/BindingManager;->unbindAsHighPriority(I)V

    :cond_1
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mInForeground:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onHide()V

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupDialog()V

    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnHide(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const-string v0, "onHoverEvent"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->begin(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAirViewMaster:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureTopControlSupportFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HideUrlBar: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoverEvent: event.Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ContentOffsetYPix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    sub-float v0, v3, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v7, v0, :cond_5

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v0, "onHoverEvent"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v7

    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->stopHoverScroll()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAirViewMagnifier()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->delegateHoverEventToUrlBarView(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onAirMagnifierEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_6
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_7

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseMoveEvent(IJFF)I

    :cond_7
    const-string v0, "onHoverEvent"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxHorizontalScrollPixInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPixInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    const/16 v0, 0xf

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->popUpZoomerHide(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onNativeContentViewCoreDestroyed(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    return-void
.end method

.method public onOverdrawBottomHeightChanged(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverdrawBottomHeightPix:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverdrawBottomHeightPix:I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(I)V

    goto :goto_0
.end method

.method public onPhysicalBackingSizeChanged(II)V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhysicalBackingSizeChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    if-ne v0, p2, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "onPhysicalBackingSizeChanged: size not changed. Returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewSizeUpdateFlag:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "onPhysicalBackingSizeChanged: calling nativeWasResized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhysicalBackingSizeChanged: nativeWasResized not called: mNativeSizeUpdateFlag= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mViewSizeUpdateFlag= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewSizeUpdateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    goto :goto_0
.end method

.method protected onRenderProcessSwap(II)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderProcessSwap  old pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newpid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInForeground:Z

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderProcessSwap  unbinding as highpriorityold pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binding as highpriority newpid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/BindingManager;->unbindAsHighPriority(I)V

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/BindingManager;->bindAsHighPriority(I)V

    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onRenderProcessSwap(II)V

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/BindingManager;->removeInitialBinding(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    return-void
.end method

.method public onShow()V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShow of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInForeground:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetCurrentRenderProcessId(I)I

    move-result v0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/BindingManager;->bindAsHighPriority(I)V

    sget-object v1, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " calling removeInitialBinding from contentviewcore with pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getBindingManager()Lorg/chromium/content/browser/BindingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/BindingManager;->removeInitialBinding(I)V

    :cond_2
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mInForeground:Z

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnShow(I)V

    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onShow()V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v2

    if-ne v2, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;->onContentSizeChanged(IIII)V

    :cond_2
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    iput-boolean v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewSizeUpdateFlag:Z

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    if-eqz v2, :cond_4

    sget-object v2, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v3, "onSizeChanged nativeWasResized called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(I)V

    iput-boolean v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    iput-boolean v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewSizeUpdateFlag:Z

    :goto_1
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateAfterSizeChanged()V

    const-string v2, "1"

    const-string v3, "sys.multiwindow.running"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateHandleScreenPositions()V

    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->isKeypadShownInContentView()Z

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setSoftKeyboard(Z)V

    goto/16 :goto_0

    :cond_4
    iput-boolean v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSizeUpdateFlag:Z

    sget-object v2, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v3, "onSizeChanged nativeWasResized not called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v4}, Lorg/chromium/content/browser/ContentViewCore;->undoScrollFocusedEditableNodeIntoViewIfNeeded(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v5

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_7

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->isNativeScrolling()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPrevContentOffsetYPix:F

    sub-float v2, v7, v2

    invoke-virtual {p1, v7, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v2, :cond_1

    sget-object v2, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent, Calling nativeSetFocus: isFocussed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(IZ)V

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mCallNativeGainFocus:Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAccessibilityTalkBackisEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isContextMenuIsShown()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setContextMenuIsShown(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/ContentView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/chromium/content/browser/ContentView;->setContextMenuInfoToContentView(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_9

    :cond_5
    :goto_1
    return v3

    :cond_6
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v7, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPrevContentOffsetYPix:F

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mToolBarTouchEventDelegate:Z

    :cond_8
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mToolBarTouchEventDelegate:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->delegateTouchEventToUrlBarView(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_5

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mToolBarTouchEventDelegate:Z

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v3, v2, :cond_c

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

    invoke-virtual {v2, p1}, Lorg/samsung/content/sbrowser/SelectionHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eq v3, v2, :cond_5

    :cond_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getInputBoxScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eq v3, v2, :cond_5

    :cond_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxHorizontalScrollPix()F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_f

    move v0, v3

    :goto_2
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPix()F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_10

    move v1, v3

    :goto_3
    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->canBeScrolledDiagonally(Z)V

    :cond_e
    :goto_5
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableOpenInNewTabWithCtrlKey()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v8, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isInsideFocussedInputField(II)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->handleMouseClickWithCtrlkey(II)Z

    goto/16 :goto_1

    :cond_f
    move v0, v4

    goto :goto_2

    :cond_10
    move v1, v4

    goto :goto_3

    :cond_11
    move v2, v4

    goto :goto_4

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_e

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->canBeScrolledDiagonally(Z)V

    goto :goto_5

    :cond_13
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->dismissZoomPicker()V

    :cond_0
    return-void
.end method

.method public pageDown(Z)Z
    .locals 5

    const/16 v4, 0x5d

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPixInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v3

    if-lt v3, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/content/browser/ContentViewCore;->scrollTo(II)V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public pageUp(Z)Z
    .locals 4

    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lorg/chromium/content/browser/ContentViewCore;->scrollTo(II)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popUpZoomerHide(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopUpZoomerDisplay:Z

    return-void
.end method

.method public reSetContentChangeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    return-void
.end method

.method public registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-void
.end method

.method public reload()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addOrRemoveAccessibilityApisIfNecessary()V

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "reload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeReload(I)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->resetErrorPageFlag()V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeRemoveJavascriptInterface(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetGestureDetectors()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->resetGestureHandlers()V

    return-void
.end method

.method public resetTabState()V
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "resetTabState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeResetTabState(I)V

    :cond_0
    return-void
.end method

.method public resetVSyncNotification()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isVSyncNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setVSyncNotificationEnabled(Z)V

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncSubscriberCount:I

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    return-void
.end method

.method public restoreStateAfterTabDragAndDrop(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "isNativeImeAdapterAttached"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "isHavingTouchEventHandlers"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->isNativeImeAdapterAttached()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(I)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->hasTouchEventHandlers(Z)V

    :cond_2
    return-void
.end method

.method public saveStateBeforeTabDragAndDrop(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v0, :cond_1

    const-string v0, "isHavingTouchEventHandlers"

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->isHavingTouchEventHandlers()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isNativeImeAdapterAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isNativeImeAdapterAttached"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public scrollBy(II)V
    .locals 9

    const/4 v4, 0x0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-float v6, p1

    int-to-float v7, p2

    const/4 v8, 0x0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(IJFFFFZ)V

    :cond_0
    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 2

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v1, :cond_0

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$8;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$8;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mScrolledAndZoomedFocusedEditableNode:Z

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v4

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v5

    int-to-float v0, p1

    sub-float v6, v0, v4

    int-to-float v0, p2

    sub-float v7, v0, v5

    cmpl-float v0, v6, v1

    if-nez v0, :cond_2

    cmpl-float v0, v7, v1

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(IJFF)V

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(IJFFFFZ)V

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollEnd(IJ)V

    goto :goto_0
.end method

.method public selectPopupMenuItems([I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectPopupMenuItems(I[I)V

    :cond_0
    return-void
.end method

.method public sendGesture(IJIIZLandroid/os/Bundle;)Z
    .locals 12

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->updateTextHandlesForGesture(I)V

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->updatePinchGestureStateListener(I)V

    if-eqz p6, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isVSyncNotificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDidSignalVSyncUsingInputEvent:Z

    :cond_2
    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setCurrentGestureType(I)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentFullScreenGestureFlag(I)Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->gestureDetected:Z

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeShowPressState(IJFF)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeShowPressCancel(IJFF)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    if-nez v1, :cond_4

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeDoubleTap(IJFF)V

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isToolbarVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    move/from16 v0, p4

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    :cond_5
    :goto_1
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getPopUpZoomerFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(IJFFZ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    move/from16 v0, p4

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    goto :goto_1

    :pswitch_4
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    const/4 v6, 0x0

    const-string v1, "ShowPress"

    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->handleTapOrPress(JFFIZ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->handleTapOrPress(JFFIZ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_6
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->handleTapOrPress(JFFIZ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_7
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(IJFF)V

    const/4 v1, 0x1

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "Distance X"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "Distance Y"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    int-to-float v7, v10

    int-to-float v8, v11

    move-object v1, p0

    move-wide v3, p2

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(IJFFFFZ)V

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForFling:Z

    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_9
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollEnd(IJ)V

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    :cond_8
    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_a
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    const-string v1, "Velocity X"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v7, v1

    const-string v1, "Velocity Y"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v8, v1

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingStart(IJFFFF)V

    const/4 v1, 0x2

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_b
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    :cond_9
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->performHaptic(I)V

    :cond_a
    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFeedbackScrollState:I

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(IJ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_c
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(IJFF)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_d
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    const-string v1, "Delta"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    move-object v1, p0

    move-wide v3, p2

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(IJFFFZ)V

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForPinch:Z

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_e
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(IJ)V

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForPinch:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->fadeinHandleIfNeeded()V

    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->setWindowSoftInputMode(I)V

    :goto_2
    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForFling:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->fadeinHandleIfNeeded()V

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->setWindowSoftInputMode(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method

.method public sendTouchEvent(JI[Lorg/chromium/content/browser/TouchPoint;)Z
    .locals 6

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendTouchEvent(IJI[Lorg/chromium/content/browser/TouchPoint;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessibilityState(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->setScriptEnabled(Z)V

    return-void
.end method

.method public setAdapterInputConnectionFactory(Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getBackgroundColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetBackgroundColor(II)V

    :cond_0
    return-void
.end method

.method public setContentChangeListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentChangeListener:Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;

    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-void
.end method

.method public setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-void
.end method

.method public setHideUrlBarEnabled(Z)V
    .locals 3

    const-string v0, "HideUrlBarHybrid: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHideURLEnabled:  enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeHideUrlBarEnabled(IZ)V

    return-void
.end method

.method public setIgnoreNavigationStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIgnoreNavigationStatus:Z

    return-void
.end method

.method public setNativeFocussed()V
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(IZ)V

    :cond_0
    return-void
.end method

.method public setPinchGestureStateListener(Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPinchGestureStateListener:Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;

    return-void
.end method

.method public setTopControlsHeight(I)V
    .locals 3

    const-string v0, "HideUrlBarHybrid: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTopControlsHeight:   top_controls_height  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTopControlsHeight(II)V

    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetUseDesktopUserAgent(IZZ)V

    :cond_0
    return-void
.end method

.method public setVSyncNotificationEnabled(Z)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isVSyncNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mDidSignalVSyncUsingInputEvent:Z

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/VSyncManager$Provider;->registerVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    :cond_1
    :goto_0
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncSubscriberCount:I

    if-eqz p1, :cond_4

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncSubscriberCount:I

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncSubscriberCount:I

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncSubscriberCount:I

    if-ne v1, v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncProvider:Lorg/chromium/content/browser/VSyncManager$Provider;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/VSyncManager$Provider;->unregisterVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mVSyncListenerRegistered:Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setViewportSizeOffset(II)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportSizeOffsetWidthPix:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportSizeOffsetHeightPix:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportSizeOffsetWidthPix:I

    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportSizeOffsetHeightPix:I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(I)V

    :cond_1
    return-void
.end method

.method public showImeIfNeeded()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeShowImeIfNeeded(I)V

    :cond_0
    return-void
.end method

.method public showInterstitialPage(Ljava/lang/String;Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-virtual {p2}, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->getNative()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeShowInterstitialPage(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public stopChildProcessOnRendererUnresponsive(I)V
    .locals 3

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopping ChildProcess OnRendererUnresponsive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->stop(I)V

    return-void
.end method

.method public stopCurrentAccessibilityNotifications()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLostFocus()V

    return-void
.end method

.method public stopLoading()V
    .locals 2

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->TAG:Ljava/lang/String;

    const-string v1, "stopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeStopLoading(I)V

    :cond_0
    return-void
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method public unRegisterScrollOrFlingListner()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-void
.end method

.method public updateHandleScreenPositions()V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionHandleShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->setStartHandlePosition(FF)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->setEndHandlePosition(FF)V

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->isInsertionHandleShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/InsertionHandleController;->setHandlePosition(FF)V

    :cond_1
    return-void
.end method

.method public updateHiddenStatusForSwappedHost()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnHide(I)V

    return-void
.end method

.method updateMultiTouchZoomSupport()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->updateMultiTouchSupport()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewGestureHandler:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentSettings;->getDisplayZoomControls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setDisplayZoomControls(Z)V

    :cond_0
    return-void
.end method

.method updatePinchGestureStateListener(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPinchGestureStateListener:Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPinchGestureStateListener:Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;->onPinchGestureStart()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPinchGestureStateListener:Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$PinchGestureStateListener;->onPinchGestureEnd()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateTopControlsState(ZZZ)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->nativeUpdateTopControlsState(IZZZ)V

    return-void
.end method

.method public urlBlocked(Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v12, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->stopLoading()V

    const-string v1, ""

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v0, 0x1100003

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v0, " at "

    const-string v2, ""

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "%s"

    const-string v2, ""

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "%e"

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    const v3, 0x10402a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v6, v7

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    const-string v2, "Blocked page"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "Blocked page"

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    :goto_3
    return v0

    :catch_0
    move-exception v8

    :goto_4
    :try_start_3
    const-string v1, "Failed loading web page!"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_6
    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_5

    :catch_4
    move-exception v8

    move-object v6, v7

    goto :goto_4
.end method

.method public zoomIn()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomReset()Z
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomByDelta(F)Z

    move-result v0

    goto :goto_0
.end method
