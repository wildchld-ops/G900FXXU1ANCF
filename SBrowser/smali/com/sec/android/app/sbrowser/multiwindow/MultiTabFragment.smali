.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;
.super Landroid/app/Fragment;
.source "MultiTabFragment.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;,
        Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;,
        Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;
    }
.end annotation


# static fields
.field private static final FIRST_INSTANCE_INDEX:I = 0x1

.field private static final LANDSCAPE_REMOVE_TAB_THRESHOLD_VELOCITY:I = 0x7d0

.field private static final PORTRAIT_REMOVE_TAB_THRESHOLD_VELOCITY:I = 0xbb8

.field public static final PREFS_NAME:Ljava/lang/String; = "MultiWindowActivityPrefsFile"

.field private static final SECOND_INSTANCE_INDEX:I = 0x2


# instance fields
.field private DEFAULT_NUM_OF_TABS_PER_ROW:I

.field DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

.field DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

.field private FIRST_BUILD:Ljava/lang/String;

.field private IS_DIALOG_VISIBLE:Ljava/lang/String;

.field private LANDSCAPE_SCROLL_Y:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private NUM_OF_TABS:I

.field private PORTRAIT_SCROLL_Y:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field configuration:Landroid/view/ViewConfiguration;

.field executorService:Ljava/util/concurrent/ExecutorService;

.field gestureDetector:Landroid/view/GestureDetector;

.field initialSelectedViewX:I

.field introanimationthread:Ljava/lang/Runnable;

.field private isActivtyDestroying:Z

.field isDialogVisible:Z

.field isSignInDialogVisible:Z

.field loadFullScreenSoftBitmapHandle:Landroid/os/Handler;

.field loadSoftwareBitmapHandle:Landroid/os/Handler;

.field private loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

.field mActionDownOnView:Z

.field mActivity:Landroid/app/Activity;

.field mAlertDialog:Landroid/app/AlertDialog;

.field mAndroidScrollView:Landroid/widget/ScrollView;

.field private mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

.field mCurrentTabBitmap:Landroid/graphics/Bitmap;

.field public mCurrentViewingTabIndex:I

.field mDestroyFullScreenBitmap:Z

.field public mFirstCreated:Z

.field mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mImageGrid:Landroid/widget/GridLayout;

.field private mImageList:Landroid/widget/LinearLayout;

.field private mImageViewVisible:Z

.field private mIncognitoTabCount:I

.field mLayout:Landroid/view/ViewGroup;

.field private mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

.field mMinimumVelocity:I

.field mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

.field mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

.field mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

.field mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

.field mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

.field mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

.field mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

.field mNeedToResetOperationState:Z

.field private mNormalTabCount:I

.field private mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

.field private mPinchDetect:Z

.field private mPointerDistance:F

.field mPreviousTabId:I

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSBrowserMainActivityInstanceIndex:I

.field mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field mScrollToHandler:Landroid/os/Handler;

.field mScrollView:Landroid/widget/FrameLayout;

.field mSelectedView:Landroid/view/View;

.field mSelectedViewIndex:I

.field mSelectedViewTabId:I

.field mSuperView:Landroid/view/View;

.field mTabInfos:Landroid/util/SparseBooleanArray;

.field private mUpdatedTabArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomIn:Z

.field private mZoomOut:Z

.field private m_shouldNotDragTab:Z

.field mbIsEnterStackAnimationEnabled:Z

.field mbIsUpdateWindowListFinished:Z

.field minScrollDistance:I

.field misClickDisabled:Z

.field parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

.field scrollY:I

.field public signInDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsUpdateWindowListFinished:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsEnterStackAnimationEnabled:Z

    const-string v0, "MultiTabFragment"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->misClickDisabled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isActivtyDestroying:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isDialogVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isSignInDialogVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPinchDetect:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mZoomIn:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mZoomOut:Z

    const-string v0, "portraitScrollY"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    const-string v0, "landscapeScrollY"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityInstanceIndex:I

    const v0, 0x3f0ccccd

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

    const-string v0, "MultiWindowActivity"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->LOG_TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mIncognitoTabCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNormalTabCount:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedViewIndex:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->scrollY:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mDestroyFullScreenBitmap:Z

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPreviousTabId:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAndroidScrollView:Landroid/widget/ScrollView;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageViewVisible:Z

    const-string v0, "firstbuild"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->FIRST_BUILD:Ljava/lang/String;

    const-string v0, "isDialogVisible"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->IS_DIALOG_VISIBLE:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mUpdatedTabArray:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->signInDialog:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActionDownOnView:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$23;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->introanimationthread:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private createDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoDialogThemeID()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoDialogStringTitleID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoDialogStringTextID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoDialogStringOkID()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$24;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$24;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private deleteUnusedInstance(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$27;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$27;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$27;->start()V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v8, "MultiWindowActivity"

    const-string v9, "dispatchTouchEvent enter"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->scrollY:I

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-ne v0, v10, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-lt v8, v10, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPinchDetect:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinchZoomAnimationInProgress()Z

    move-result v8

    if-eq v8, v7, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float v2, v8, v9

    mul-float v8, v2, v2

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPointerDistance:F

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x4120

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPointerDistance:F

    cmpl-float v8, v8, v4

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinched()Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v6, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {p1, v7, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object v3, v1

    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v8, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    move-object v3, v5

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v8, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v9, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->getFirstTouchedViewIndex()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getTouchedViewIndex(FFI)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->setFirstTouchedViewIndex(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mZoomIn:Z

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->performPinchZoom(Z)V

    :cond_3
    :goto_1
    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPointerDistance:F

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinched()Z

    move-result v8

    if-ne v8, v7, :cond_3

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v6, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {p1, v7, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object v3, v1

    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v8, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    move-object v3, v5

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v8, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v9, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->getFirstTouchedViewIndex()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getTouchedViewIndex(FFI)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->setFirstTouchedViewIndex(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mZoomOut:Z

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->performPinchZoom(Z)V

    goto :goto_1

    :cond_6
    if-ne v0, v7, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->scrollY:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPinchDetect:Z

    if-eqz v8, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPinchDetect:Z

    :cond_7
    :goto_2
    move v6, v7

    goto/16 :goto_0

    :cond_8
    and-int/lit16 v8, v0, 0xff

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v7, :cond_7

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_9
    sget-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ENABLED:Z

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v8

    if-ne v8, v10, :cond_b

    sget-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ENABLE_PINCH_LANDSCAPE:Z

    if-nez v8, :cond_b

    :cond_a
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPinchDetect:Z

    goto/16 :goto_0

    :cond_b
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPinchDetect:Z

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPointerDistance:F

    goto :goto_2
.end method

.method private showNoWindowsAvailableScreen()V
    .locals 3

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getNoTabsLayoutID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateViewsCloseAllViews()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->showNoWindowsAvailableScreen()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->disableOnlyBackButton()V

    return-void
.end method


# virtual methods
.method public SetStandardGroup()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabCount()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNormalTabCount:I

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNormalTabCount:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabUrl(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "chrome://tabspreview/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabCount()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mIncognitoTabCount:I

    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mIncognitoTabCount:I

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_6

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public addNewTabInfo(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public addTabView(IIIZ)V
    .locals 22

    move/from16 v6, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentTabById(ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabLayoutID()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCloseButtonViewID()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleIconViewID()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabSetByIdValid()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabSetByIdTitle()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getStringAccessibilityButtonCloseTabID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoBackgroundID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoTitleIconID()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabSetByIdIsThumbnailAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabSetByIdThumbnail()Landroid/graphics/Bitmap;

    move-result-object v18

    if-nez v4, :cond_6

    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageViewVisible:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;

    move-object/from16 v3, p0

    move/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;ZIILandroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$13;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$14;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$15;

    move-object/from16 v10, p0

    move-object v11, v8

    move/from16 v12, p2

    move v13, v4

    move-object v14, v7

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$15;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;IZLandroid/widget/ImageView;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$16;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v2, v0, v4, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$17;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;ZI)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;

    move-object/from16 v10, p0

    move-object v11, v8

    move/from16 v12, p2

    move v13, v4

    move-object/from16 v14, v19

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$18;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;IZLandroid/widget/TextView;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-gez p3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsEnterStackAnimationEnabled:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0, v5, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->enterStackAnimation(Ljava/lang/Boolean;IILandroid/view/View;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f80

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_4
    return-void

    :cond_5
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    move/from16 v0, p3

    invoke-virtual {v2, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3
.end method

.method public bottomBarExitAnimation(IZ)V
    .locals 0

    return-void
.end method

.method public closeMenu()V
    .locals 0

    return-void
.end method

.method public computeScrollY()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->SetStandardGroup()Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    mul-int v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    div-int/2addr v2, v3

    mul-int v0, v1, v2

    goto :goto_0
.end method

.method public deleteDragNDropTab(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    if-gt v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->disableBackButton()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$25;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$25;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$25;->start()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDragNDropInProgress(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDragNDropInProgress(Z)V

    goto :goto_1
.end method

.method public deleteTab(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-gt v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedViewTabId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeIncognitoTab(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->disableBackButton()V

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->updatePerspTabId()V

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$20;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$20;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$20;->start()V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeNormalTab(I)V

    goto :goto_1
.end method

.method public deleteThumbnail(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->deleteThumbnail(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public disableBackButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->updateViewsCloseAllViews()V

    :cond_0
    return-void
.end method

.method public disableOnlyBackButton()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonLayoutID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonImageViewID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getWindowManagerTitleLeftMarginNoBack()I

    move-result v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public displayToastMessage(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v5, 0x0

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    sub-int v6, v7, v8

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    sub-int v7, v2, v0

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v5, v7, v8

    :goto_0
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowWindowManagerBarHeight()I

    move-result v8

    add-int v4, v7, v8

    if-ge v6, v4, :cond_0

    move v6, v4

    :cond_0
    const/16 v7, 0x30

    invoke-virtual {v3, v7, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    :cond_1
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v2, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v5, v7, v8

    goto :goto_0
.end method

.method public finishActivty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    return-void
.end method

.method public getAlltabId()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNormalTabCount:I

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNormalTabCount:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mIncognitoTabCount:I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mIncognitoTabCount:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getIsClickDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->misClickDisabled:Z

    return v0
.end method

.method public getIsUpdateWindowListFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsUpdateWindowListFinished:Z

    return v0
.end method

.method public getScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getScrollView()Landroid/widget/FrameLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollYPos()I
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->SetStandardGroup()Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v6

    if-ne v6, v8, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v5

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v6

    if-ne v6, v8, :cond_9

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ne v6, v7, :cond_1

    :cond_0
    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    add-int/lit8 v1, v6, -0x2

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v7

    add-int/2addr v6, v7

    mul-int v0, v6, v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    mul-int v4, v6, v7

    if-gtz v3, :cond_7

    if-ge v3, v0, :cond_7

    move v3, v0

    :cond_3
    :goto_2
    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    if-nez v6, :cond_4

    const/4 v3, 0x0

    :cond_4
    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v5

    goto :goto_1

    :cond_7
    add-int v6, v3, v2

    if-gt v6, v4, :cond_8

    move v3, v0

    goto :goto_2

    :cond_8
    if-le v3, v4, :cond_3

    sub-int v6, v3, v4

    if-le v6, v5, :cond_3

    move v3, v0

    goto :goto_2

    :cond_9
    const/4 v6, 0x4

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    div-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    div-int/2addr v7, v8

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    div-int/2addr v6, v7

    add-int/lit8 v1, v6, -0x1

    if-gez v1, :cond_a

    const/4 v1, 0x0

    :cond_a
    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_3
    move v3, v0

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v7

    add-int/2addr v6, v7

    mul-int/2addr v6, v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v7

    sub-int v0, v6, v7

    goto :goto_3
.end method

.method public getScrollYPosPerspective()I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->SetStandardGroup()Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v8

    if-ne v8, v11, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v8

    if-ne v8, v11, :cond_8

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    if-ne v8, v9, :cond_1

    :cond_0
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    add-int/lit8 v2, v8, -0x2

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int v8, v7, v1

    mul-int v0, v8, v2

    add-int v8, v7, v1

    iget v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    mul-int v6, v8, v9

    if-gez v5, :cond_6

    if-ge v5, v0, :cond_6

    move v5, v0

    :cond_3
    :goto_1
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    if-nez v8, :cond_4

    const/4 v5, 0x0

    :cond_4
    return v5

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_6
    add-int v8, v5, v4

    if-gt v8, v6, :cond_7

    move v5, v0

    goto :goto_1

    :cond_7
    if-le v5, v6, :cond_3

    sub-int v8, v5, v6

    if-le v8, v7, :cond_3

    move v5, v0

    goto :goto_1

    :cond_8
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iput v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->NUM_OF_TABS:I

    div-int v3, v8, v9

    if-gez v3, :cond_9

    const/4 v3, 0x0

    :cond_9
    if-nez v3, :cond_a

    const/4 v0, 0x0

    :goto_2
    move v5, v0

    goto :goto_1

    :cond_a
    add-int v8, v7, v1

    mul-int/2addr v8, v3

    sub-int v0, v8, v1

    goto :goto_2
.end method

.method public getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTouchedViewIndex(FFI)I
    .locals 5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v4

    int-to-float v4, v4

    sub-float p2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_2

    :cond_1
    :goto_0
    return p3

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move p3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getWasTabListAnimationStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getmActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getmChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmCurrentTabBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmCurrentViewingTabIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    return v0
.end method

.method public getmLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getmMultiTabAnimations()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    return-object v0
.end method

.method public getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    return-object v0
.end method

.method public getmMultiTabOutroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    return-object v0
.end method

.method public getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    return-object v0
.end method

.method public getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    return-object v0
.end method

.method public getmOperationState()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object v0
.end method

.method public getmPopup()Landroid/widget/PopupMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getmScrollView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getmSelectedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method public getmSelectedViewTabId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedViewTabId:I

    return v0
.end method

.method public getmSuperView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    return-object v0
.end method

.method public getmTabInfos()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getmUpdatedTabArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mUpdatedTabArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleNewTabCreation()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->setReturnTabDefault()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_NEWTAB_KEY_ANIM:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterPortrait()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitPortrait()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterLandscape()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitLandscape()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    goto :goto_0
.end method

.method public handleTabDeletion(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_UPDATE_VIEW_ONDELETION:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedViewTabId:I

    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    sget v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ZOOM_OUT_DELETE_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-gt v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_2
    :goto_2
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :goto_3
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->deleteDragNDropTab(Landroid/view/View;)V

    goto :goto_3
.end method

.method public handleWindowStateChange()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->showHidePerspImageView(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->reCreateWindowList()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowAddNewTabTextID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowAddNewTabTextID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1
.end method

.method public isActivtyDestroying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isActivtyDestroying:Z

    return v0
.end method

.method public isInSpenMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMaxTabDialogEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTabManagerInMultiWindowStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ismNeedToResetOperationState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    return v0
.end method

.method public loadBackgroundThumbnail()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;->moveSbrowserToBack()V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement CommInterface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->FIRST_BUILD:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->IS_DIALOG_VISIBLE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isDialogVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isSignInDialogVisible"

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isSignInDialogVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "SBrowserMainActivityContextId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SBrowserMainActivityInstanceIndex"

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityInstanceIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mDestroyFullScreenBitmap:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;->changeConfiguration(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->FIRST_BUILD:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->FIRST_BUILD:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->IS_DIALOG_VISIBLE:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->IS_DIALOG_VISIBLE:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isDialogVisible:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->createDialog()V

    :cond_1
    const-string v2, "SBrowserMainActivityContextId"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SBrowserMainActivityContextId"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityContextId:Ljava/lang/String;

    :cond_2
    const-string v2, "isSignInDialogVisible"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "isSignInDialogVisible"

    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->showDialog()V

    :cond_3
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "SBrowserMainActivityInstanceIndex"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityInstanceIndex:I

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSBrowserMainActivityInstanceIndex:I

    invoke-direct {v2, p0, v3, v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPreviousTabId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabBitmp()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, "isDialogVisible"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isDialogVisible:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->createDialog()V

    :cond_5
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;

    invoke-direct {v12, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->configuration:Landroid/view/ViewConfiguration;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->minScrollDistance:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMinimumVelocity:I

    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v12}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->SetStandardGroup()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3f333333

    move v3, v1

    move v6, v4

    move v7, v5

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_8

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_OUTRO_ENABLED:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    const-string v1, "firstbuild"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    const-string v1, "chekc for mFirstCreated"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFirstCreated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v13, v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    :goto_1
    return-void

    :cond_8
    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->setFullscreen(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCALEDOWN_DEL_ANIMATION:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_ALPHA_ANIMATION:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ENABLED:Z

    const/4 v6, 0x1

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_ENTERSTACK_TRANSLATE_ANIMATION:Z

    const/4 v6, 0x2

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiTabLayoutID()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewID()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAndroidScrollView:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAndroidScrollView:Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCROLL_BAR_ENABLED:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getPortraitLayoutID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeLayoutID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v6, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getNoTabsLayoutID()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonLayoutID()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$3;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageList:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupLayoutTransition()V

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$4;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->updateWindowList()V

    :goto_2
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->sBrowserToolbarView(ZIZ)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFramesID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    :cond_4
    new-instance v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$6;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x5

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->registerForNotifications()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDropHandler(Landroid/content/Context;Landroid/view/View;)V

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->showHidePerspImageView(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    return-object v6

    :cond_6
    const/4 v6, 0x1

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCALEDOWN_DEL_ANIMATION:Z

    const/4 v6, 0x1

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_ALPHA_ANIMATION:Z

    const/4 v6, 0x1

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ENABLED:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_ENTERSTACK_TRANSLATE_ANIMATION:Z

    const/4 v6, 0x4

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    goto/16 :goto_0

    :cond_7
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->animateTempImage(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupLayoutTransition()V

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$5;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$5;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->updateWindowList()V

    goto/16 :goto_2

    :cond_a
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-nez v6, :cond_9

    sget-boolean v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->animateTempImage(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v6, v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f266666

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$7;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isActivtyDestroying:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->cancel(Z)Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollToHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->destroy()V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mDestroyFullScreenBitmap:Z

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mPreviousTabId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->destroy(ZI)V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_OUTRO_ENABLED:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->destroy()V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageList:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mAndroidScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->parentLayout:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$ParentLayout;->removeAllViews()V

    :cond_7
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->destroy()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 9

    const-wide/high16 v7, 0x4090

    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->broadcastOutOfMemoryNotification()V

    const-string v2, "Device on Low memory App Memory: Pss=%.2f MB, Private=%.2f MB, Shared=%.2f MB"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Low Memory :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmMenuFragmentCloseAllId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getAlltabId()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeAllTabs()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->setReturnTabDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->updateViewsCloseAllViews()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$8;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$8;->start()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmMenuFragmentSyncTabId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MultiWindowAcivity"

    const-string v1, "In sync_tabs if"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->showDialog()V

    goto :goto_0

    :cond_2
    const-string v0, "MultiWindowAcivity"

    const-string v1, "In sync_tabs else"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setSignedInWithDialog(Z)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getSyncTabActivityClass()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmMenuFragmentInCognitoId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isDialogVisible:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->createDialog()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getStringMaxTabCountReachedID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->displayToastMessage(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->unRegisterForNotifications()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mDestroyFullScreenBitmap:Z

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 9

    const-wide/high16 v7, 0x4090

    const/16 v2, 0x28

    if-eq p1, v2, :cond_0

    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    :cond_0
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->broadcastOutOfMemoryNotification()V

    const-string v2, "Device on Low memory App Memory: Pss=%.2f MB, Private=%.2f MB, Shared=%.2f MB"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Trim Memory :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    return-void
.end method

.method public pointToPosition(FF)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v5

    int-to-float v5, v5

    sub-float p2, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float p1, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTopGapDueToCloseButtonMargin()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v3, p1

    float-to-int v5, p2

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    move-object v3, v4

    goto :goto_0
.end method

.method public reCreateWindowList()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->SetStandardGroup()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->updateWindowList()V

    return-void
.end method

.method public resetIsMaxTabDialogEnabledFlag()V
    .locals 0

    return-void
.end method

.method public sBrowserToolbarView(ZIZ)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-ne p1, v8, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getUrlbarId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCountId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoBackgroundID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    if-eqz p3, :cond_7

    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-array v2, v8, [I

    const v5, 0x10102db

    aput v5, v2, v7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    throw v5

    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public saveReturnTabPos()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->computeScrollY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;->setMultiTabFragmentScrollPos(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->computeScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;->setMultiTabFragmentScrollPos(II)V

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 3

    const/16 v2, 0x400

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public setImageViewVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageViewVisible:Z

    return-void
.end method

.method public setIsEnterStackAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsEnterStackAnimationEnabled:Z

    return-void
.end method

.method public setMaxTabDialogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setReturnTabDefault()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;->setMultiTabFragmentScrollPos(II)V

    return-void
.end method

.method public setisClickDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->misClickDisabled:Z

    return-void
.end method

.method public setmFirstCreated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    return-void
.end method

.method public setmNeedToResetOperationState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mNeedToResetOperationState:Z

    return-void
.end method

.method public setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-void
.end method

.method public setmSelectedView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    return-void
.end method

.method public setmTabInfos(Landroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mTabInfos:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public showDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogThemeID()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringSigninTextID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringCancel()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$11;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$10;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringOk()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$9;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->signInDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->isSignInDialogVisible:Z

    return-void
.end method

.method public showHidePerspImageView(Z)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v3, v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f266666

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchToSBM(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCommInterface:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$CommInterface;->removeTabManagerFragment(Landroid/content/Context;II)V

    return-void
.end method

.method public updateCurrentTabFocus(II)V
    .locals 0

    return-void
.end method

.method public updateFullScreenThumbnail(I)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$26;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadFullScreenSoftBitmapHandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadFullScreenSoftBitmapHandle:Landroid/os/Handler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    :cond_0
    return-void
.end method

.method public updateThumbnail(IZ)V
    .locals 11

    const/4 v10, 0x0

    sget-boolean v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v9, :cond_8

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, p1, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    const-string v7, ""

    if-eqz p2, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabThumbnailById(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabTitleById(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz p2, :cond_7

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v3, v9, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    :cond_2
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabTitleById(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    new-instance v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$21;

    invoke-direct {v9, p0, p1, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$21;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;ILandroid/widget/ImageView;)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    invoke-direct {v1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v9

    invoke-virtual {v9, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadClippedBitmap(Ljava/lang/ref/WeakReference;I)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, p1, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz p2, :cond_d

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabThumbnailById(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabTitleById(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_e

    if-eqz p2, :cond_e

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v3, v9, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    :cond_9
    const/4 v4, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    :goto_5
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabTitleById(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_e
    new-instance v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$22;

    invoke-direct {v9, p0, p1, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$22;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;ILandroid/widget/ImageView;)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    invoke-direct {v1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v9

    invoke-virtual {v9, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    goto :goto_5
.end method

.method public updateWindowList()V
    .locals 15

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->disableBackButton()V

    :goto_0
    return-void

    :cond_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsUpdateWindowListFinished:Z

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v12, :cond_a

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v5

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundWidth()I

    move-result v9

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewWidth()I

    move-result v6

    if-ge v6, v10, :cond_7

    div-int v8, v6, v9

    :goto_1
    if-nez v8, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-lez v8, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v8}, Landroid/widget/GridLayout;->setColumnCount(I)V

    mul-int v12, v9, v8

    sub-int v2, v10, v12

    sub-int v11, v10, v2

    const/4 v12, 0x1

    if-ne v8, v12, :cond_8

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/lit8 v12, v12, -0xa

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v12, :cond_3

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v5

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewWidth()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeVerticalViewGap()I

    move-result v13

    add-int v9, v12, v13

    div-int v8, v10, v9

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v12, :cond_4

    if-lez v8, :cond_4

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v8}, Landroid/widget/GridLayout;->setColumnCount(I)V

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_5

    if-lt v0, v3, :cond_b

    :cond_5
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mbIsUpdateWindowListFinished:Z

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundViewID()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x3c

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->cancel(Z)Z

    :cond_6
    new-instance v12, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-direct {v12, p0, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Ljava/util/ArrayList;)V

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    const/4 v13, 0x0

    new-array v13, v13, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_7
    div-int v8, v10, v9

    goto/16 :goto_1

    :cond_8
    if-le v10, v6, :cond_9

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09022e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_9
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09022e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v8}, Landroid/widget/GridLayout;->setColumnCount(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v0, :cond_5

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {p0, v0, v12, v13, v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->addTabView(IIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method
