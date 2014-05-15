.class public Lorg/samsung/content/sbrowser/SbrContentViewCore;
.super Ljava/lang/Object;
.source "SbrContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrContentViewCore$6;,
        Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;,
        Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;,
        Lorg/samsung/content/sbrowser/SbrContentViewCore$fpListener;,
        Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;,
        Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AIR_VIEW_DISPLAY_TIMER:I = 0x320

.field private static final AIR_VIEW_HOLDING_SLOP:I = 0x7

.field private static final AIR_VIEW_RECREATE_TIMER:I = 0xfa

.field private static final AIR_VIEW_SLOP:I = 0x2d

.field private static final AIR_VIEW_TOUCH_SLOP:I = 0x46

.field private static final AIR_VIEW_UPDATE_TIMER:I = 0xc8

.field private static final BITMAP_FORMAT_ALPHA_8:I = 0x0

.field private static final BITMAP_FORMAT_ARGB_4444:I = 0x2

.field private static final BITMAP_FORMAT_ARGB_8888:I = 0x3

.field private static final BITMAP_FORMAT_RGB_565:I = 0x1

.field private static final DEFAULT_LOCK_TIMEOUT:I = 0xc8

.field private static final DEFAULT_NUM_CORES:I = 0x4

.field private static final KEYPAD_ENTERKEY_LONGPRESS_MODE:I = 0x2

.field private static final KEYPAD_ENTERKEY_NONE:I = 0x0

.field private static final KEYPAD_ENTERKEY_SHORTPRESS_MODE:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final LONG_PRESS_CENTER:I = 0x3

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final SCROLL_BEGIN_NOTIFY:I = 0x4

.field private static final SCROLL_END_NOTIFY:I = 0x8

.field public static final SCROLL_PAGE_DOWN:I = 0x2

.field public static final SCROLL_PAGE_UP:I = 0x1

.field public static final SHOW_TEXT_SELECTION_HANDLES:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SbrContentViewCore"

.field private static final URLBAR_ACTIVE_ACK:I = 0x2

.field private static final URLBAR_BITMAP_ACK:I = 0x1

.field public static contentViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/chromium/content/browser/ContentViewCore;",
            "Lorg/chromium/content/browser/ContentView;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsRSSExists:Z

.field private static mResourceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mRssLinkInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private firstKeyDownEvent:Landroid/view/KeyEvent;

.field private hasImageActionBar:Z

.field public isCtrlKeypressed:Z

.field private final isScrollDown:I

.field private final isScrollUp:I

.field public isSelectionFromLongPress:Z

.field private mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

.field public mAirViewExitDownTime:J

.field public mAirViewExitEventTime:J

.field private mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

.field private mAirViewStatus:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBeingAirJump:Z

.field private mBeingHovered:Z

.field private mBeingSpenStylus:Z

.field private mBeingTouched:Z

.field private mBitmapForDragging:Landroid/graphics/Bitmap;

.field private mBlockFingerHoverEvent:Z

.field private mBlockFullScreenGestureFlag:Z

.field private mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

.field private mCheckPopupZoomer:Z

.field private mConfirmAirView:Z

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContextMenuIsShown:Z

.field private mCurrentGestureType:I

.field private mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

.field private mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

.field private mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

.field public mDeferredUndoHideHandleRunnable:Ljava/lang/Runnable;

.field public mDeferredUndoHideHandleRunnableScheduled:Z

.field private mDeletedAirViewMS:J

.field private mDeviceScaleFactor:F

.field private mEditFieldContentBounds:Landroid/graphics/Rect;

.field private mEnabledVsync:Z

.field private mEnterKeyAction:I

.field private mFirstAirViewMS:J

.field private mFirstIgnoreAirViewMS:J

.field private mFirstMagnifier:Z

.field private mGainFocus:Z

.field private mHasSelection:Z

.field public mHideHandleTemporarilyForFling:Z

.field public mHideHandleTemporarilyForPinch:Z

.field public mHideHandleTemporarilyForScroll:Z

.field private mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

.field private mHoverFocusHighlight:Z

.field private mHoverPointX:F

.field private mHoverPointY:F

.field private mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

.field private mIgnoreHoverEvent:Z

.field private mImageForCopy:Landroid/graphics/Bitmap;

.field private mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field private mIsErrorPage:Z

.field private mIsHidden:Z

.field private mIsSelectedTextVisible:Z

.field private mIsSelectionDragging:Z

.field private mIsTextScrollable:Z

.field private mIsTouchOnEditField:Z

.field private mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

.field private mLastTouchInInputRawX:I

.field private mLongPressCopyImageXPix:F

.field private mLongPressCopyImageYPix:F

.field private mLongPressTimeMs:J

.field private mLongPressXPix:F

.field private mLongPressYPix:F

.field private mMagnifierDisplay:Z

.field private mNativePageScaleFactor:F

.field mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

.field private mPopUpZoomerDisplay:Z

.field private mPreAirViewX:F

.field private mPreAirViewY:F

.field private mPreHoverX:F

.field private mPreHoverY:F

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field public final mPrivateSelectionEventHandler:Landroid/os/Handler;

.field private mPwdEchoEnabled:Z

.field private mResetPosition:Z

.field private mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

.field private mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

.field mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

.field private mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

.field private mScrollPageCount:I

.field private mSelectionEditable:Z

.field public mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

.field public mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

.field private mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

.field public mSpenTextSelectionMode:Z

.field mSupportedBUSFreqTable:[I

.field mSupportedCPUCoreNum:[I

.field mSupportedCPUFreqTable:[I

.field private mTabDragAndDropIsInProgress:Z

.field private mTextureView:Landroid/view/SurfaceView;

.field private mUrlBarHeight:I

.field private mWeb_Y:I

.field nativeSbrContentViewCore:I

.field private selectAllEnable:Z

.field private tab_manager_active:Z

.field time_ms:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->$assertionsDisabled:Z

    const-class v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->contentViewMap:Ljava/util/Map;

    sput-boolean v1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsRSSExists:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResourceIdMap:Ljava/util/Map;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSpenTextSelectionMode:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForPinch:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForFling:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnableScheduled:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isCtrlKeypressed:Z

    iput v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isScrollUp:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isScrollDown:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mNativePageScaleFactor:F

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mWeb_Y:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mUrlBarHeight:I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mGainFocus:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingAirJump:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingSpenStylus:Z

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnabledVsync:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEditFieldContentBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTouchOnEditField:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLastTouchInInputRawX:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTextScrollable:Z

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPwdEchoEnabled:Z

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsSelectedTextVisible:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFullScreenGestureFlag:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->selectAllEnable:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContextMenuIsShown:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsErrorPage:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mCurrentGestureType:I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->firstKeyDownEvent:Landroid/view/KeyEvent;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsSelectionDragging:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->tab_manager_active:Z

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mTabDragAndDropIsInProgress:Z

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstAirViewMS:J

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstIgnoreAirViewMS:J

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeletedAirViewMS:J

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewX:F

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewY:F

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mMagnifierDisplay:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPopUpZoomerDisplay:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFingerHoverEvent:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverFocusHighlight:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIgnoreHoverEvent:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewStatus:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstMagnifier:Z

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointX:F

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverX:F

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverY:F

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewExitEventTime:J

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewExitDownTime:J

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mCheckPopupZoomer:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->hasImageActionBar:Z

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentViewCore$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore$1;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentViewCore$3;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore$3;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getImeAdapterForTest()Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentViewCore()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSetNativeContentView(II)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->initAirViewMagnifier(Landroid/content/Context;)V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->contentViewMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-direct {v0, p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getHoverScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->OnRequest_Accept_Headers()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private NotifyAutofillBegin()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method private NotifyRssLinksCompleted(Z)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSS Link Found = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsRSSExists:Z

    return-void
.end method

.method private OnLaunchFingerPrintActivity()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "WEBLOGIN"

    const-string v1, "OnLaunchFingerPrintActivity: called "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;->OnShowVerifyer()V

    :cond_0
    return-void
.end method

.method private OnOpenUrlInNewTab(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->openNewTab(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "SavePage -  OnReceiveBitmapFromCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private OnTextFieldBoundsChanged(IIIIZ)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEditFieldContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTextScrollable:Z

    return-void
.end method

.method private PointOnRegion(Z)V
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsSelectionDragging:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getHtmlDragAndDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->GetSelectionMarkup()V

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->GetSelectionBitmap()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    iget-wide v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressTimeMs:J

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressXPix:F

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressYPix:F

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativePerformLongPress(IJFFZ)V

    goto :goto_0
.end method

.method private SelectedBitmap(Landroid/graphics/Bitmap;)V
    .locals 11
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v10, 0x1

    const/high16 v9, 0x4b80

    if-eqz p1, :cond_1

    const/high16 v2, 0x100

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v8}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v8}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v4, v7

    :cond_0
    invoke-static {p1, v5, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    const/high16 v7, 0x100

    if-gt v6, v7, :cond_2

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v7

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->SelectedBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->getInstance()Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    move-result-object v7

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->getInstance()Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    move-result-object v7

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7, v8}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->startDragSelection(Lorg/chromium/content/browser/ContentView;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsSelectionDragging:Z

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v8, v9, v8

    mul-float v1, v7, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v8, v9, v8

    mul-float v0, v7, v8

    float-to-int v7, v1

    float-to-int v8, v0

    invoke-static {v3, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private SelectedMarkup(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->getInstance()Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->setMarkup(Ljava/lang/String;)V

    return-void
.end method

.method private UpdateReCaptureSoftBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "SotBitmap UpdateReCaptureSoftBitmap "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    invoke-interface {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;->OnPlaceHolderSoftBitmapListener(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    invoke-interface {v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;->OnUpdateRecaptureSoftBitmapListener(Landroid/graphics/Bitmap;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private UpdateSoftBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "SotBitmap UpdateSoftBitmap "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    invoke-interface {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;->OnUpdateSoftBitmapListener(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SbrContentViewCore;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->doKeyLongPress()V

    return-void
.end method

.method private addRssLinks(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    new-instance v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/samsung/content/sbrowser/SbrContentViewCore$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private airViewMagnifierMove(FF)V
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v4, v4, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v4, v4, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHoverMoveRange(FF)I

    move-result v2

    const/high16 v4, 0x40e0

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_3

    iget p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverX:F

    iget p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverY:F

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIgnoreHoverEvent:Z

    iget-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstIgnoreAirViewMS:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstIgnoreAirViewMS:J

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIgnoreHoverEvent:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget-boolean v4, v4, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mNeedToUpdate:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstMagnifier:Z

    if-nez v4, :cond_4

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIgnoreHoverEvent:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstIgnoreAirViewMS:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverX:F

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverY:F

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIgnoreHoverEvent:Z

    goto :goto_0

    :cond_4
    iput-wide v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstIgnoreAirViewMS:J

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointX:F

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v4, p1, p2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setLastHover(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setCurrentViewSize(II)V

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->continueHoverHighlight(FF)V

    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    float-to-int v4, p1

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    float-to-int v4, p1

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    float-to-int v4, p2

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    float-to-int v4, p2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showMagnifierPopUp(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstMagnifier:Z

    if-eqz v4, :cond_2

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstMagnifier:Z

    goto :goto_1
.end method

.method private continueHoverHighlight(FF)V
    .locals 7

    const/4 v6, 0x1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    float-to-int v2, p1

    float-to-int v3, p2

    iget-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->time_ms:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeShowHoverFocus(IIIJZ)V

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverFocusHighlight:Z

    :cond_0
    return-void
.end method

.method private doKeyLongPress()V
    .locals 3

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeperformLongClickOnFocussedNode(IJ)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    :cond_0
    return-void
.end method

.method private getBitmapFormat(Landroid/graphics/Bitmap$Config;)I
    .locals 3

    sget-object v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$6;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x3

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getHoverMoveRange(FF)I
    .locals 7

    const-wide/high16 v5, 0x4000

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverX:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverY:F

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0
.end method

.method public static getRSSLinkInfo(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;

    goto :goto_0
.end method

.method public static getRSSLinkInfoSize()I
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mRssLinkInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResourceIdMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final initAirViewMagnifier(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-direct {v1, p1, p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;-><init>(Landroid/content/Context;Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setToolBarHeight(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setLayoutScale()V

    const-string v1, "SbrContentViewCore"

    const-string v2, "in init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    new-instance v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$5;

    invoke-direct {v2, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore$5;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static isRSSExists()Z
    .locals 1

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsRSSExists:Z

    return v0
.end method

.method private native nativeAccept_Headers(I)Ljava/lang/String;
.end method

.method private native nativeCheckBelongToSelection(III)V
.end method

.method private native nativeClearSelection(I)V
.end method

.method private native nativeCreateNativeJavaBitmap(IIII)Landroid/graphics/Bitmap;
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeFPAuthStatus(IZLjava/lang/String;)V
.end method

.method private native nativeGetBitmapForCopyImage(IFF)V
.end method

.method private native nativeGetBitmapFromCachedResource(ILjava/lang/String;)V
.end method

.method private native nativeGetBitmapFromCompositor(IIIIILandroid/graphics/Bitmap;I)I
.end method

.method private native nativeGetRSSLinksFromPage(I)V
.end method

.method private native nativeGetScrapBitmap(III)V
.end method

.method private native nativeGetSelectionBitmap(I)V
.end method

.method private native nativeGetSelectionContext(IZ)V
.end method

.method private native nativeGetSelectionMarkup(I)V
.end method

.method private native nativeGetSelectionRect(I)V
.end method

.method private native nativeGetSmartClipData(IIIII)V
.end method

.method private native nativeHandleMouseClickWithCtrlkey(III)V
.end method

.method private native nativeHandleSelectionDrop(IIILjava/lang/String;)V
.end method

.method private native nativeHideUrlBarCmdReq(IILandroid/graphics/Bitmap;ZZ)V
.end method

.method private native nativeInit()I
.end method

.method private native nativeIsWMLPage(I)Z
.end method

.method private native nativeLoadDataWithBaseUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeOnCustomMenuAction(II)V
.end method

.method private native nativePerformLongPress(IJFFZ)V
.end method

.method private native nativePrintBegin(I)V
.end method

.method private native nativePrintEnd(I)V
.end method

.method private native nativePrintPage(II)V
.end method

.method private native nativeReCaptureSoftBitmap(IIIIFZ)V
.end method

.method private native nativeRecognizeArticle(II)V
.end method

.method private native nativeRequestSelectionVisibilityStatus(I)V
.end method

.method private native nativeRestoreSelection(I)V
.end method

.method private native nativeSavePageAs(I)V
.end method

.method private native nativeSbrScrollBegin(IJFF)V
.end method

.method private native nativeSbrScrollBy(IJIIFFZ)V
.end method

.method private native nativeSbrScrollEnd(IJ)V
.end method

.method private native nativeScrollEditWithCursor(II)V
.end method

.method private native nativeSetInterceptNavigationDelegate(ILorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeSetNativeContentView(II)V
.end method

.method private native nativeSetPasswordEcho(IZ)V
.end method

.method private native nativeShowHoverFocus(IIIJZ)V
.end method

.method private native nativeUpdateSelection(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeclearTextSelection(I)V
.end method

.method private native nativemoveFocusToNext(I)V
.end method

.method private native nativemoveFocusToPrevious(I)V
.end method

.method private native nativeperformLongClickOnFocussedNode(IJ)V
.end method

.method private native nativeselectClosestWord(III)V
.end method

.method private notifyHideUrlBarEvent(III)V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "SbrContentViewCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarAutoHider : notifyHideUrlBarEvent event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event_data1 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event_data2 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-eqz v2, :cond_0

    if-ne p1, v0, :cond_2

    const-string v0, "SbrContentViewCore"

    const-string v1, "ToolBarAutoHider : notifyHideUrlBarEvent OnUrlBarBitmapUpdated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->OnUrlBarBitmapUpdated()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const-string v0, "SbrContentViewCore"

    const-string v1, "ToolBarAutoHider : notifyHideUrlBarEvent OnUrlBarActive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->OnUrlBarActive()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    const-string v2, "SbrContentViewCore"

    const-string v3, "ToolBarAutoHider : notifyHideUrlBarEvent OnScrollBegin"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-ne p2, v0, :cond_4

    :goto_1
    invoke-interface {v2, v0}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->OnScrollBegin(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideNoResizingFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setViewportSizeOffset(II)V

    goto :goto_0
.end method

.method private notifyRotateStatus()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;->ID_CSS:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setDashmode(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$SSRMCaller;I)V

    return-void
.end method

.method private onBitmapForCopyImage(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "COPYIMAGE"

    const-string v1, "SbrContentView Core onBitmapForPrint !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->onBitmapForCopyImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onBitmapForPrint(Landroid/graphics/Bitmap;I)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v1, "PRINT"

    const-string v2, "SbrContentView Core onBitmapForPrint !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/Tab;->onBitmapForPrint(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method private onBitmapForScrap(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCRAP :: onBitmapForScrap :: response:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->onBitmapForScrap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private onCheckFPAuth()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

    invoke-interface {v0}, Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;->IsVerficationRequire()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onErrorPage()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SbrContentViewCore"

    const-string v1, "onErrorPage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsErrorPage:Z

    return-void
.end method

.method private onFocusedNodeChanged(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_0
    return-void
.end method

.method private onPrintBegin(I)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v1, "PRINT"

    const-string v2, "SbrContentView Core onBitmapForPrint !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->onPrintBegin(I)V

    :cond_0
    return-void
.end method

.method private onPrintEnd()V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v3, "PRINT"

    const-string v4, "SbrContentViewCore onPrintEnd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->onPrintEnd()V

    goto :goto_0
.end method

.method private onRecognizeArticleResult(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->onRecognizeArticleResult(Z)V

    return-void
.end method

.method private onSelectionContextExtracted(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getLastSelectedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->doKikinSearch(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSetBingSearchEngineAsDefault()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->onSetBingSearchEngineAsDefault()V

    return-void
.end method

.method private onSmartClipDataExtracted(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    instance-of v2, v0, Lorg/samsung/content/sbrowser/SbrContentView;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentView;

    invoke-virtual {v1, p1}, Lorg/samsung/content/sbrowser/SbrContentView;->onSmartClipDataExtracted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private popUpMagnifier(FF)V
    .locals 4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    :cond_0
    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverX:F

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreHoverY:F

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointX:F

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v1, p1, p2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setLastHover(FF)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setStatusBarHeight(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWindowTop()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setWindowTop(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setCurrentViewSize(II)V

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->continueHoverHighlight(FF)V

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    float-to-int v1, p1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v2, v2, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    float-to-int v1, p1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v2, v2, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    float-to-int v1, p2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v2, v2, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showMagnifierPopUp(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static registerAirViewMagnifierBigResourceId(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setMagnifierBigResourceId(I)V

    return-void
.end method

.method public static registerAirViewMagnifierBigResourceId_L(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setMagnifierBigResourceId_L(I)V

    return-void
.end method

.method public static registerAirViewMagnifierSmallResourceId(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setMagnifierSmallResourceId(I)V

    return-void
.end method

.method public static registerAirViewMagnifierSmallResourceId_L(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setMagnifierSmallResourceId_L(I)V

    return-void
.end method

.method private registerForStylusPenEvent()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    invoke-virtual {v0, p0}, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->registerStylusButtonEventListener(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    goto :goto_0
.end method

.method public static registerResourceId(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResourceIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeForStylusPenEvent()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->unregisterStylusButtonEventListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSPenManger:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    goto :goto_0
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;)V
    .locals 8

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    const-string v5, "/mnt/sdcard/Download/"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ChromeView"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0xa

    invoke-virtual {p1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private selectPopupClose()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->hideIfRequired(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method

.method private selectPopupEmpty()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->hideEmpty(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method

.method private setBitmapForDragging(Landroid/graphics/Bitmap;II)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v7, 0x1

    const/high16 v6, 0x4b80

    sget-object v4, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v5, "setBitmapForDragging !!"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/high16 v2, 0x100

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    const/high16 v4, 0x100

    if-gt v3, v4, :cond_2

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onBitmapForCopyImage(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p1, :cond_1

    int-to-float v4, p2

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mNativePageScaleFactor:F

    mul-float v1, v4, v5

    int-to-float v4, p3

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mNativePageScaleFactor:F

    mul-float v0, v4, v5

    float-to-int v4, v1

    float-to-int v5, v0

    invoke-static {p1, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :cond_2
    int-to-float v4, p2

    int-to-float v5, v3

    div-float v5, v6, v5

    mul-float v1, v4, v5

    int-to-float v4, p3

    int-to-float v5, v3

    div-float v5, v6, v5

    mul-float v0, v4, v5

    float-to-int v4, v1

    float-to-int v5, v0

    invoke-static {p1, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setSelectionVisibilty(Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsSelectedTextVisible:Z

    return-void
.end method

.method private showContextMenu(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentView;->setContextMenuInfoToContentView(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-boolean v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsSelectionDragging:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    :cond_2
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isEditable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSelectedText:Z

    if-eqz v0, :cond_0

    :cond_3
    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isAnchor:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isEditable:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSelectedText:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setContextMenuIsShown(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performLongClick()Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isCustomMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showCustomContextMenu(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    goto :goto_0
.end method

.method private showCustomContextMenu(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemSize()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemAt(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;

    move-result-object v4

    iget-object v4, v4, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;->mLabel:Ljava/lang/String;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/samsung/content/sbrowser/SbrContentViewCore$4;

    invoke-direct {v4, p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$4;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMagnifierPopUp(Landroid/graphics/Rect;)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget-boolean v1, v1, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    const/high16 v1, 0x43d2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v2, v2, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :goto_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    const/high16 v1, 0x43aa

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v2, v2, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_sound_and_haptic_feedback"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "com.sec.android.app.sbrowser"

    const-string v3, "0008"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/applogging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstMagnifier:Z

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    :cond_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, v2, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointX:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v4, v4, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getStatusBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    const/high16 v5, 0x4296

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v6, v6, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->show(Landroid/graphics/Rect;Landroid/view/View;II)V

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mMagnifierDisplay:Z

    if-nez v1, :cond_5

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mMagnifierDisplay:Z

    :cond_5
    const-string v1, "SbrContentViewCore"

    const-string v2, "AirView Magnifier Show "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showSelectPopup([Ljava/lang/String;[IZ[II)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setWindowSoftInputMode(I)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->show(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[II)V

    return-void
.end method

.method private startHoverHighlight(FF)V
    .locals 5

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    float-to-int v1, p1

    float-to-int v2, p2

    iget-wide v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->time_ms:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->SbrPressState(IIJ)V

    :cond_0
    return-void
.end method

.method private updateCurrentSelectionRect(IIII)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionrect x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionrect y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionrect x2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionrect y2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateImeAdapter(IILjava/lang/String;IIIIZIZ)V
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    sget v0, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-eq p2, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-boolean v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    sget v0, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypePassword:I

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mIsPasswordType:Z

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->attachAndShowIfNeeded(IILjava/lang/String;ZIZ)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_3

    if-ne p4, p6, :cond_2

    if-ne p5, p7, :cond_2

    move p4, p5

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setEditableText(Ljava/lang/String;IIII)V

    :cond_3
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public FPAuthStatus(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "WEBLOGIN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPAuthStatus: Inside FPAuthStatus enabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " usrName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeFPAuthStatus(IZLjava/lang/String;)V

    goto :goto_0
.end method

.method public GetBitmapforCopyImage(FF)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetBitmapForCopyImage(IFF)V

    :cond_0
    return-void
.end method

.method public GetSelectionBitmap()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetSelectionBitmap(I)V

    :cond_0
    return-void
.end method

.method public GetSelectionMarkup()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetSelectionMarkup(I)V

    :cond_0
    return-void
.end method

.method public HandleSelectionDrop(IILjava/lang/String;)V
    .locals 6

    int-to-float v4, p1

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v4, p2

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    div-float/2addr v4, v5

    float-to-int v3, v4

    int-to-float v4, v2

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, v3

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v4, v0, v1, p3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeHandleSelectionDrop(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    if-ne v0, v4, :cond_2

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_hidden:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2, v3, v3}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_2
    :goto_1
    iget v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    if-eq v0, v4, :cond_3

    iget v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    if-ne v0, v2, :cond_0

    :cond_3
    const-string v0, "SbrContentViewCore"

    const-string v1, "ToolBarAutoHider : HideUrlBarCmdReq sending updated params sent to Engine "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    iget v2, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    iget-object v3, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_bitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    iget-boolean v5, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeHideUrlBarCmdReq(IILandroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    if-nez v0, :cond_5

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "top-controls-height"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    float-to-int v0, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v6, v0, v1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v3, v6}, Lorg/chromium/content/browser/ContentViewCore;->setViewportSizeOffset(II)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v3, v2, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2, v2, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    goto :goto_1
.end method

.method public IsImageActionBar()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->hasImageActionBar:Z

    return v0
.end method

.method public IsTabManagerActive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->tab_manager_active:Z

    return v0
.end method

.method public IsWMLPage()Z
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeIsWMLPage(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final OnRequest_Accept_Headers()V
    .locals 2

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeAccept_Headers(I)Ljava/lang/String;

    move-result-object v0

    return-void
.end method

.method public PrintBegin()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativePrintBegin(I)V

    goto :goto_0
.end method

.method public PrintEnd()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativePrintEnd(I)V

    goto :goto_0
.end method

.method public PrintPage(I)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativePrintPage(II)V

    goto :goto_0
.end method

.method public ReCaptureSoftBitmap(IZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, -0x4080

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "SotBitmap RecaptureSoftBitmap "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mUpdateFrameInfoCalled:I

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SOFT_BITMAP_UPDATE_FRAMEINFO_DELAY:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v5

    :cond_0
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    move-object v0, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeReCaptureSoftBitmap(IIIIFZ)V

    return-void
.end method

.method public RequestSelectionRect()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetSelectionRect(I)V

    :cond_0
    return-void
.end method

.method public SetSbrWebLoginDelegate(Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrWebLoginDelegate:Lorg/samsung/content/sbrowser/SbrWebLoginDelegate;

    return-void
.end method

.method public SetTabMangerActiveStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->tab_manager_active:Z

    return-void
.end method

.method public acquireCPUDVFS()V
    .locals 4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x180600

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_1
    return-void

    :cond_0
    const-string v0, "SbrContentViewCore"

    const-string v1, "mDVFSCPUCoreNumHelper or mSupportedCPUCoreNum is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SbrContentViewCore"

    const-string v1, "mDVFSCPUMinLockHelper or mSupportedCPUFreqTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public acquireDVFS()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    aget v2, v2, v4

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x122a00

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    aget v2, v2, v4

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_2
    return-void

    :cond_0
    const-string v0, "SbrContentViewCore"

    const-string v1, "mDVFSCPUCoreNumHelper or mSupportedCPUCoreNum is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SbrContentViewCore"

    const-string v1, "mDVFSCPUMinLockHelper or mSupportedCPUFreqTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "SbrContentViewCore"

    const-string v1, "mDVFSBUSMinLockHelper or mSupportedBUSFreqTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public airViewMagnifierHide()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverFocusHighlight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointX:F

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverPointY:F

    invoke-virtual {p0, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->endHoverHighlight(FF)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SbrContentViewCore"

    const-string v1, "airViewMagnifierHide called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->hide(Z)V

    :cond_1
    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mMagnifierDisplay:Z

    return-void
.end method

.method public airViewStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewStatus:Z

    return v0
.end method

.method public blockFingerHoverEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFingerHoverEvent:Z

    return-void
.end method

.method public checkBelongToSelection(II)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeCheckBelongToSelection(III)V

    :cond_0
    return-void
.end method

.method public clearKikinSelection()V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeClearSelection(I)V

    :cond_0
    return-void
.end method

.method public clearTextSelection()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeclearTextSelection(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSelectAllEnable(Z)V

    return-void
.end method

.method public createNativeJavaBitmap(Landroid/graphics/Bitmap$Config;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-lt p2, v2, :cond_0

    if-ge p3, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    sget-object v2, Lorg/samsung/content/sbrowser/SbrContentViewCore$6;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createNativeJavaBitmap: wrong config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    :goto_1
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v1, v0, p2, p3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeCreateNativeJavaBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delegateDragEventToUrlBarView(Landroid/view/DragEvent;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0, p1}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->OnDragEventDelegate(Landroid/view/DragEvent;)V

    goto :goto_0
.end method

.method public delegateHoverEventToUrlBarView(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0, p1}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->OnHoverEventDelegate(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public delegateTouchEventToUrlBarView(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0, p1}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->OnTouchEventDelegate(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStop()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirGestureFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->checkAirJumpEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->stopAirGestureLintener()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    :cond_1
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeDestroy(I)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBitmapForDragging:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public endHoverHighlight(FF)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    float-to-int v2, p1

    float-to-int v3, p2

    iget-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->time_ms:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeShowHoverFocus(IIIJZ)V

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverFocusHighlight:Z

    :cond_0
    return-void
.end method

.method public extractSmartClipData(IIII)V
    .locals 6

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetSmartClipData(IIIII)V

    :cond_0
    return-void
.end method

.method public fadeinHandleIfNeeded()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForScroll:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideHandleTemporarilyForPinch:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isHiddenTemporarily()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->getSbrInsertionHandleController()Lorg/samsung/content/sbrowser/SbrInsertionHandleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->isHiddenTemporarily()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_4

    new-instance v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;

    invoke-direct {v1, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore$2;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnable:Ljava/lang/Runnable;

    :cond_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnableScheduled:Z

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnableScheduled:Z

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnableScheduled:Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnableScheduled:Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeferredUndoHideHandleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getActivityContext()Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getBackgroundColor()I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getBitmap(IIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v11, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v11, 0x1

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v10

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v9

    const-string v1, "getBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimensions[x, y, width, height]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[aWidth, aHeight]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    if-lez p3, :cond_1

    if-gtz p4, :cond_2

    :cond_1
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureTopControlSupportFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v11, :cond_4

    move/from16 v0, p3

    if-ne v0, v10, :cond_4

    move/from16 v0, p4

    if-ne v0, v9, :cond_4

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    sub-int p4, p4, v1

    :cond_3
    :goto_1
    if-gtz p4, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    if-nez v11, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_5
    invoke-static/range {p3 .. p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v1, :cond_6

    const-string v1, "getBitmap"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->begin(Ljava/lang/String;)V

    add-int v1, p2, p4

    sub-int p2, v9, v1

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapFormat(Landroid/graphics/Bitmap$Config;)I

    move-result v8

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetBitmapFromCompositor(IIIIILandroid/graphics/Bitmap;I)I

    move-result v12

    const-string v1, "getBitmap"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v12, v1, :cond_6

    const-string v1, "getBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativePopulateBitmapFromCompositor FAILED: ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const-string v1, "getBitmap"

    const-string v2, "Returning the Bitmap."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getBitmap(IIIILandroid/graphics/Bitmap;)V
    .locals 11

    if-nez p5, :cond_1

    const-string v0, "SbrContentViewCore"

    const-string v1, "getBitmap() called with null Bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p4, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p3, :cond_3

    :cond_2
    const-string v0, "SbrContentViewCore"

    const-string v1, "getBitmap() called with improper height, width"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v9

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v8

    const-string v0, "getBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions[x, y, width, height]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[aWidth, aHeight]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p3, v9, :cond_4

    if-ne p4, v8, :cond_4

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mUrlBarHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mUrlBarHeight:I

    sub-int/2addr p4, v0

    :cond_4
    if-lez p4, :cond_0

    :cond_5
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    const-string v0, "getBitmap"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->begin(Ljava/lang/String;)V

    add-int v0, p2, p4

    sub-int p2, v8, v0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapFormat(Landroid/graphics/Bitmap$Config;)I

    move-result v7

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetBitmapFromCompositor(IIIIILandroid/graphics/Bitmap;I)I

    move-result v10

    const-string v0, "getBitmap"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq v10, v0, :cond_0

    const-string v0, "getBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativePopulateBitmapFromCompositor FAILED: ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getBitmapFromCachedResource(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SavePage - getBitmapFromCachedResource imageUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetBitmapFromCachedResource(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBitmapFromCompositor()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/high16 v11, -0x100

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v7, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v9, v0, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v8, v0, :cond_2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v6, v0, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v9, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eq v0, v11, :cond_1

    :cond_0
    :goto_1
    return-object v6

    :cond_1
    add-int/2addr v8, v7

    add-int/2addr v9, v7

    goto :goto_0

    :cond_2
    move-object v6, v10

    goto :goto_1

    :cond_3
    move-object v6, v10

    goto :goto_1
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getContentFullScreenGestureFlag(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFullScreenGestureFlag:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getContentSize()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollRange()I

    move-result v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollRange()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public getCurrentGestureType()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mCurrentGestureType:I

    return v0
.end method

.method public getDeviceScaleFactor()F
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    return v0
.end method

.method public getEditFieldContentBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEditFieldContentBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getErrorPageFlag()Z
    .locals 2

    const-string v0, "SbrContentViewCore"

    const-string v1, "getErrorPageFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsErrorPage:Z

    return v0
.end method

.method public getFullBitmapFromCompositor()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    invoke-virtual {p0, v3, v3, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getImageForCopy()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImageForCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    return-object v0
.end method

.method public getRssLinks(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSbrRSSFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetRSSLinksFromPage(I)V

    goto :goto_0
.end method

.method public getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentViewClient;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SbrContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    return-object v0
.end method

.method public getScrapBitmap()V
    .locals 4

    sget-object v2, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v3, "SCRAP :: getScrapBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentWidthCss()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentHeightCss()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v2, v1, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetScrapBitmap(III)V

    goto :goto_0
.end method

.method public getScrollXY()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollXForTest()I

    move-result v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getSelectionContext(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V
    .locals 2

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSelectionEditable:Z

    if-nez v0, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    sget-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeGetSelectionContext(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    iget-object v3, v3, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    iget-object v4, v4, Lorg/chromium/content/browser/ContentViewCore;->mStartHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    iget-object v5, v5, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    iget-object v6, v6, Lorg/chromium/content/browser/ContentViewCore;->mEndHandlePoint:Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isMultiwindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method getTabDragAndDropIsInProgress()Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SbrContentViewCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SbrContentViewCore - getTabDragAndDropIsInProgress() mTabDragAndDropIsInProgress ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mTabDragAndDropIsInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mTabDragAndDropIsInProgress:Z

    return v0
.end method

.method public getTextSelectedString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionStartRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionStartRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionStartRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionStartRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionEndRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionEndRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionEndRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSelectionEndRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v18, 0x41c8

    mul-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v14, v0

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    if-eq v10, v6, :cond_0

    if-ne v13, v9, :cond_1

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v19, v14

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    :goto_0
    sget-object v18, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cropRect = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "currentSelectionRect = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_2

    sget-object v18, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v19, "cropRect and currentSelectionRect does match"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/chromium/content/browser/ContentViewCore;->getLastSelectedText()Ljava/lang/String;

    move-result-object v18

    :goto_1
    return-object v18

    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v19, v14

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWindowTop()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v1, v3, [I

    aput v4, v1, v4

    aput v4, v1, v5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_1
    aget v3, v1, v5

    return v3
.end method

.method public handleCtrlKeyPress(Landroid/view/KeyEvent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isCtrlKeypressed:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isCtrlKeypressed:Z

    :cond_2
    return-void
.end method

.method public handleKeyBoardSelection(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_4

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->allowAutomaticShowing()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/16 v0, 0x32

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->copy()Z

    goto :goto_0

    :cond_3
    const/16 v0, 0x34

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->cut()Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMouseClickWithCtrlkey(II)Z
    .locals 6

    int-to-float v4, p1

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v4, p2

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    div-float/2addr v4, v5

    float-to-int v3, v4

    int-to-float v4, v2

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, v3

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v4, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeHandleMouseClickWithCtrlkey(III)V

    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLastTouchInInputRawX:I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEditFieldContentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getScale()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTouchOnEditField:Z

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTouchOnEditField:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLastTouchInInputRawX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTextScrollable:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v2, :cond_2

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v1, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeScrollEditWithCursor(II)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, v1, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLastTouchInInputRawX:I

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsTouchOnEditField:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLastTouchInInputRawX:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleZoomInZoomOut(Landroid/view/MotionEvent;)V
    .locals 6

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBegin(JII)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x3fa0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBy(JIIF)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchEnd(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBegin(JII)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const v5, 0x3f4ccccd

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBy(JIIF)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchEnd(J)V

    goto :goto_0
.end method

.method public hideAnimatedView()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->disableAnimatedLayout()V

    :cond_0
    return-void
.end method

.method public initializeToolBarLayerPosition()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0, v1, v1}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->onRenderProcessSwap(II)V

    goto :goto_0
.end method

.method public isAccessibilityTalkBackisEnabled()Z
    .locals 5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "accessibility"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isAirViewMagnifier()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mMagnifierDisplay:Z

    return v0
.end method

.method public isContentViewBeingTouched()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    return v0
.end method

.method public isContextMenuIsShown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContextMenuIsShown:Z

    return v0
.end method

.method public isDisableAirBrowse()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAirViewMagnifier()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDisableAirJump()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "1"

    const-string v4, "sys.multiwindow.running"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mGainFocus:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingSpenStylus:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mGainFocus:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingSpenStylus:Z

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isDisableSmartScroll()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "1"

    const-string v4, "sys.multiwindow.running"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mGainFocus:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingAirJump:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingSpenStylus:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mGainFocus:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingAirJump:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingSpenStylus:Z

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isInsideFocussedInputField(II)Z
    .locals 4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getEditFieldContentBounds()Landroid/graphics/Rect;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongPressSelection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiwindowMode()Z
    .locals 3

    const-string v1, "1"

    const-string v2, "sys.multiwindow.running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelectAllEnable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->selectAllEnable:Z

    return v0
.end method

.method public isSelectedTextVisible()Z
    .locals 5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewHeight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LOG"

    const-string v4, "Text inside visible area"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const-string v3, "LOG"

    const-string v4, "Text outside visible area"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSelectionFromLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    return v0
.end method

.method public isTextSelected()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHasSelection:Z

    return v0
.end method

.method public loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeLoadDataWithBaseUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public moveFocusToNext()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativemoveFocusToNext(I)V

    :cond_0
    return-void
.end method

.method public moveFocusToPrevious()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativemoveFocusToPrevious(I)V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->checkWebSelectIsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->hide(Lorg/chromium/content/browser/ContentViewCore;)V

    :cond_0
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onActivityPause()V

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAirViewMagnifier()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->dismissLinkifyDialog()V

    :cond_3
    return-void
.end method

.method public onActivityResume()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onActivityResume()V

    :cond_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPwdEchoEnabled:Z

    if-eq v2, v0, :cond_1

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v2, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSetPasswordEcho(IZ)V

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPwdEchoEnabled:Z

    :cond_1
    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onAirMagnifierEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->time_ms:J

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirViewMagnifierFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onHoverMagnfierHandle(Landroid/view/MotionEvent;)Z

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    move v2, v3

    goto :goto_2
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSPenTextSelectionFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerForStylusPenEvent()V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onAttachedToWindow()V

    return-void
.end method

.method public onBackKeyHideAirViewMagnifier()V
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAirViewMagnifier()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hide()V

    :cond_0
    return-void
.end method

.method public onCustomMenuAction(I)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeOnCustomMenuAction(II)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSPenTextSelectionFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->removeForStylusPenEvent()V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboardFromContentView()V

    :cond_1
    return-void
.end method

.method public onEnterKeyAction(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnterLongPressFlag()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->firstKeyDownEvent:Landroid/view/KeyEvent;

    :cond_2
    :goto_1
    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->firstKeyDownEvent:Landroid/view/KeyEvent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->firstKeyDownEvent:Landroid/view/KeyEvent;

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEventCommon(Landroid/view/KeyEvent;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->firstKeyDownEvent:Landroid/view/KeyEvent;

    :cond_4
    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mEnterKeyAction:I

    goto :goto_1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mGainFocus:Z

    return-void
.end method

.method public onHide()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStop()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAirViewMagnifier()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirGestureFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->checkAirJumpEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->stopAirGestureLintener()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getHoverScrollFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->checkHoverScrolling(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingHovered:Z

    goto :goto_0
.end method

.method public onHoverMagnfierHandle(Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/high16 v10, 0x4000

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->isKeyboardShown(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isTextSelected()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsImageActionBar()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    const-string v4, "SbrContentViewCore"

    const-string v5, "onHoverMagnifierHandle ACTION_HOVER_ENTER"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewStatus:Z

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewX:F

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstAirViewMS:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeletedAirViewMS:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeletedAirViewMS:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iput-boolean v8, v4, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAirViewMode:Z

    invoke-direct {p0, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->popUpMagnifier(FF)V

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeletedAirViewMS:J

    const-string v4, "SbrContentViewCore"

    const-string v5, "onHoverMagnifierHandle ACTION_HOVER_ENTER - Magnifier was displayed due to recreation timer"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFingerHoverEvent:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverFocusHighlight:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->endHoverHighlight(FF)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierMove(FF)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    if-eqz v4, :cond_5

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewX:F

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstAirViewMS:J

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewX:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPreAirViewY:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    const/high16 v4, 0x4234

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iget v5, v5, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v3, v4, :cond_6

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstAirViewMS:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iput-boolean v8, v4, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAirViewMode:Z

    invoke-direct {p0, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->popUpMagnifier(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mFirstAirViewMS:J

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    const-string v4, "SbrContentViewCore"

    const-string v5, "onHoverMagnifierHandle ACTION_HOVER_EXIT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewStatus:Z

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    iput-boolean v9, v4, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAirViewMode:Z

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFingerHoverEvent:Z

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewMagnifier:Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewExitEventTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirViewExitDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeletedAirViewMS:J

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :cond_8
    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mConfirmAirView:Z

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mResetPosition:Z

    invoke-virtual {p0, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->endHoverHighlight(FF)V

    goto/16 :goto_0
.end method

.method public onKikinActionItemPressed()V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->setUserIsInKikinSearchMode()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getSelectionReason()Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionContext(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    :cond_0
    return-void
.end method

.method public onLongPress()V
    .locals 2

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v0, v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->setSelectionReason(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    :cond_0
    return-void
.end method

.method public onLongTap()V
    .locals 2

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v0, v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->setSelectionReason(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    :cond_0
    return-void
.end method

.method onNativeDestroyed(I)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SbrContentViewCore"

    const-string v1, "SbrContentViewCore - onNativeDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    return-void
.end method

.method public onRenderProcessSwap(II)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    invoke-interface {v0, p1, p2}, Lorg/samsung/content/sbrowser/HideUrlBarListener;->onRenderProcessSwap(II)V

    goto :goto_0
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onSelectionStarted()V

    :cond_0
    return-void
.end method

.method public onSelectionHandleTouchUp()V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getSelectionReason()Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionContext(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mKikinSelectionHandler:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-virtual {v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->ensureSelectionHandlesDoNotOverlapKikin()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->IsPaused()Z

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v4

    if-ne v4, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getIsAirBrowseRunning()Z

    move-result v1

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->IsTabManagerActive()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-nez v4, :cond_2

    new-instance v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    :cond_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStart()V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirGestureFlag()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/samsung/content/sbrowser/AirGestureListener;->checkAirJumpEnalbed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-nez v4, :cond_4

    new-instance v4, Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v6, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6, v5}, Lorg/samsung/content/sbrowser/AirGestureListener;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;I)V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    :cond_4
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    invoke-virtual {v4, v5}, Lorg/samsung/content/sbrowser/AirGestureListener;->startAirGestureLintener(I)V

    :cond_5
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "show_password"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_0
    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v4, :cond_6

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v4, v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSetPasswordEcho(IZ)V

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPwdEchoEnabled:Z

    :cond_6
    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    return-void

    :cond_7
    move v3, v5

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceTabDragAndDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mTabDragAndDropIsInProgress:Z

    if-eqz v0, :cond_0

    const-string v0, "SbrContentViewCore"

    const-string v1, "onSizeChanged : clear mTabDragAndDropIsInProgress!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mTabDragAndDropIsInProgress:Z

    const-string v0, "SbrContentViewCore"

    const-string v1, "onSizeChanged : call setVSyncNotificationEnabled() FORCED!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setVSyncNotificationEnabled(Z)V

    :cond_0
    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->checkWebSelectIsUp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->resizeWebSelectDialog()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->scrollFocusedEditableNodeIntoView()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onPause()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_DisableBoosterWhenTouchDown"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_5

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onResume()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingTouched:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onResume()V

    goto :goto_0
.end method

.method public onWebContentsSwapped()V
    .locals 3

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebContentsSwapped mIsHidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->updateHiddenStatusForSwappedHost()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-nez v0, :cond_4

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStart()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirGestureFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->checkAirJumpEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-nez v0, :cond_1

    new-instance v0, Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lorg/samsung/content/sbrowser/AirGestureListener;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/AirGestureListener;->startAirGestureLintener(I)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getGestureAirTurnListener()Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getGestureAirTurnListener()Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->registerAirTurnListener()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onResume()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStop()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirGestureFlag()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->checkAirJumpEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->stopAirGestureLintener()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getGestureAirTurnListener()Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getGestureAirTurnListener()Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->unregisterAirTurnListener()V

    goto :goto_1
.end method

.method public reSetSbrSoftBitmapListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    return-void
.end method

.method public recognizeArticle(I)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeRecognizeArticle(II)V

    return-void
.end method

.method public releaseDVFS()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSCPUMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSupportedBUSFreqTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDVFSBUSMinLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_2
    return-void
.end method

.method public requestSelectionVisibiltyStatus()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeRequestSelectionVisibilityStatus(I)V

    :cond_0
    return-void
.end method

.method public resetErrorPageFlag()V
    .locals 2

    const-string v0, "SbrContentViewCore"

    const-string v1, "resetErrorPageFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mIsErrorPage:Z

    return-void
.end method

.method public restorePreviousSelection()V
    .locals 0

    return-void
.end method

.method public restoreSelection()V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeRestoreSelection(I)V

    :cond_0
    return-void
.end method

.method public savePageAs()V
    .locals 2

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "SCRAP :: savePageAs()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSavePageAs(I)V

    :cond_0
    return-void
.end method

.method public sbrSetInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSetInterceptNavigationDelegate(ILorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    :cond_0
    return-void
.end method

.method public scrapPageSavedFileName(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCRAP :: scrapPageSavedFileName :: filename ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSbrContentViewClient()Lorg/samsung/content/sbrowser/SbrContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewClient;->scrapPageSavedFileName(Ljava/lang/String;)V

    return-void
.end method

.method public scrollBegin()V
    .locals 7

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->isNativeScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mUrlBarHeight:I

    int-to-float v0, v0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    mul-float v5, v0, v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setNativeScrolling(Z)V

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrScrollBegin(IJFF)V

    goto :goto_0
.end method

.method public scrollBegin(FF)V
    .locals 6

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->isNativeScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v4, p1

    move v5, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setNativeScrolling(Z)V

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrScrollBegin(IJFF)V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 9

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollXForTest()I

    move-result v4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v5

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-float v6, p1

    int-to-float v7, p2

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrScrollBy(IJIIFFZ)V

    :cond_0
    return-void
.end method

.method public scrollEnd()V
    .locals 4

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->isNativeScrolling()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setNativeScrolling(Z)V

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v2, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrScrollEnd(IJ)V

    goto :goto_0
.end method

.method public scrollToPage(I)V
    .locals 10

    const-wide/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/high16 v3, 0x42c8

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mDeviceScaleFactor:F

    div-float/2addr v3, v4

    float-to-int v0, v3

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    if-gtz v3, :cond_6

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setAirJumping(Z)V

    :cond_5
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onResume()V

    goto :goto_1

    :cond_6
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    if-ge v3, v0, :cond_7

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    mul-int/lit8 v1, v3, -0x1

    iput v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    :goto_2
    invoke-virtual {p0, v7, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBy(II)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_7
    mul-int/lit8 v1, v0, -0x1

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    if-gtz v3, :cond_b

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mAirGestureListener:Lorg/samsung/content/sbrowser/AirGestureListener;

    if-eqz v3, :cond_a

    invoke-virtual {p0, v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setAirJumping(Z)V

    :cond_a
    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onResume()V

    goto/16 :goto_1

    :cond_b
    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    if-ge v3, v0, :cond_c

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    iput v7, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    :goto_3
    invoke-virtual {p0, v7, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBy(II)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_c
    move v1, v0

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectClosetWord(II)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-boolean v0, v0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionEditable:Z

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeselectClosestWord(III)V

    :cond_2
    return-void
.end method

.method public selectLastTouchText()V
    .locals 13

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getmLastRawX()F

    move-result v9

    float-to-int v4, v9

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getmLastRawY()F

    move-result v9

    float-to-int v5, v9

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v3

    new-array v6, v10, [I

    new-array v8, v10, [I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    add-int v9, v4, v2

    aget v10, v8, v11

    aget v11, v6, v11

    add-int/2addr v10, v11

    sub-int v0, v9, v10

    add-int v9, v5, v3

    aget v10, v8, v12

    aget v11, v6, v12

    add-int/2addr v10, v11

    sub-int v1, v9, v10

    const-string v9, "SbrContentViewCore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "@kikin Last tocuh x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\ty:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public selectLastTouchText(II)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeselectClosestWord(III)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setCurrentGestureType(I)V

    :cond_1
    return-void
.end method

.method public sendRequestForCopyImage()V
    .locals 2

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressCopyImageXPix:F

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressCopyImageYPix:F

    invoke-virtual {p0, v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->GetBitmapforCopyImage(FF)V

    return-void
.end method

.method public setAirJumping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingAirJump:Z

    return-void
.end method

.method public setContentFullScreenGestureFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBlockFullScreenGestureFlag:Z

    return-void
.end method

.method public setContextMenuIsShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContextMenuIsShown:Z

    return-void
.end method

.method public setCopyImageCoOrdinates(FF)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressCopyImageXPix:F

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressCopyImageYPix:F

    return-void
.end method

.method public setCurrentGestureType(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mCurrentGestureType:I

    return-void
.end method

.method public setDoingSpenStylus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mBeingSpenStylus:Z

    return-void
.end method

.method public setForLongPressAfterConfirmation(JFF)V
    .locals 0

    iput-wide p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressTimeMs:J

    iput p3, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressXPix:F

    iput p4, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mLongPressYPix:F

    return-void
.end method

.method public setHideUrlBarListener(Lorg/samsung/content/sbrowser/HideUrlBarListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHideUrlBarListener:Lorg/samsung/content/sbrowser/HideUrlBarListener;

    :cond_0
    return-void
.end method

.method public setPlaceHolderSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    return-void
.end method

.method public setSbrContentViewClient(Lorg/samsung/content/sbrowser/SbrContentViewClient;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrContentViewClient:Lorg/samsung/content/sbrowser/SbrContentViewClient;

    return-void
.end method

.method public setSbrSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSbrSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;

    return-void
.end method

.method public setScrollPageCount(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mScrollPageCount:I

    return-void
.end method

.method public setSelectAllEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->selectAllEnable:Z

    return-void
.end method

.method public setSelectionFromLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress:Z

    return-void
.end method

.method public setTabDragAndDropIsInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mTabDragAndDropIsInProgress:Z

    return-void
.end method

.method public setToolBarBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public showSelectionHandles()V
    .locals 4

    const/4 v3, 0x7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "SbrContentViewCore"

    const-string v1, "onSelectionBoundsChangedEx reset SHOW_TEXT_SELECTION_HANDLES"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mPrivateSelectionEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public showSelectionHandlesAfterTouchUp()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->showSelectionHandles()V

    :cond_0
    return-void
.end method

.method public spenSelectBetweenCoordinates(IIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v0

    float-to-int v6, v0

    :cond_0
    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getInsertionHandleController()Lorg/chromium/content/browser/input/InsertionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->allowAutomaticShowing()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->allowAutomaticShowing()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentViewCore()I

    move-result v1

    int-to-float v2, p1

    sub-int v3, p2, v6

    int-to-float v3, v3

    int-to-float v4, p3

    sub-int v5, p4, v6

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectBetweenCoordinates(IFFFF)V

    :cond_2
    return-void
.end method

.method public startSmartScrollHandler()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mSmartScrollHandler:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStart()V

    :cond_1
    return-void
.end method

.method public stopHoverScroll()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getHoverScrollFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->mHoverScroller:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->stopHoverScroll()V

    :cond_0
    return-void
.end method

.method public updateSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeSbrContentViewCore:I

    invoke-direct {p0, v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->nativeUpdateSelection(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
