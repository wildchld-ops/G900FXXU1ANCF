.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;
.super Landroid/app/Activity;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$MyGestureDetector;
    }
.end annotation


# static fields
.field private static final BLANK_URL:Ljava/lang/String; = "about:blank"

.field public static final FIRST_INSTANCE_INDEX:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "MultiWindowActivityPrefsFile"

.field public static final SECOND_INSTANCE_INDEX:I = 0x2

.field public static final SYNC_OPENED_PAGES:I = 0x41


# instance fields
.field private DEFAULT_NUM_OF_TABS_PER_ROW:I

.field DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

.field DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

.field private LANDSCAPE_SCROLL_Y:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field MAX_Y_DISTANCE_TRAVELED_THRESHOLD:I

.field MIN_X_DISTANCE_TRAVELED_THRESHOLD:I

.field private NUM_OF_TABS:I

.field private PORTRAIT_SCROLL_Y:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field configuration:Landroid/view/ViewConfiguration;

.field gestureDetector:Landroid/view/GestureDetector;

.field gridview:Landroid/widget/GridView;

.field initialSelectedViewX:I

.field private isActivtyDestroying:Z

.field isCheckBoxChecked:Z

.field isDialogVisible:Z

.field private isMaxTabDialogEnabled:Z

.field private isPopupMenuVisible:Z

.field isSignInDialogVisible:Z

.field private isSpenMode:Z

.field private iterationCount:I

.field loadFullScreenSoftBitmapHandle:Landroid/os/Handler;

.field loadSoftwareBitmapHandle:Landroid/os/Handler;

.field private loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

.field mActionDownOnView:Z

.field mAndroidScrollView:Landroid/widget/ScrollView;

.field private mBottomBarLayout:Landroid/view/View;

.field public mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentTabBitmap:Landroid/graphics/Bitmap;

.field public mCurrentViewingTabIndex:I

.field mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

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

.field mIsMaxTabReached:Z

.field mLayout:Landroid/view/ViewGroup;

.field private mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

.field mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuDisplayPossible:Z

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

.field mOptionsLayout:Landroid/widget/LinearLayout;

.field private mPinchDetect:Z

.field private mPointerDistance:F

.field private mPopup:Landroid/widget/PopupMenu;

.field mPreviousTabId:I

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSBrowserMainActivityInstanceIndex:I

.field private mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field mScrollToHandler:Landroid/os/Handler;

.field mScrollView:Landroid/widget/FrameLayout;

.field private mScrollViewListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mSelectedView:Landroid/view/View;

.field mSelectedViewIndex:I

.field mSelectedViewTabId:I

.field mTabInfos:Landroid/util/SparseBooleanArray;

.field mThumbnailFocused:Z

.field mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

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

.field private mWasTabListAnimationStarted:Z

.field private mZoomIn:Z

.field private mZoomOut:Z

.field private m_shouldNotDragTab:Z

.field mbCloseOptionMenu:Z

.field mbIsEnterStackAnimationEnabled:Z

.field mbIsUpdateWindowListFinished:Z

.field minScrollDistance:I

.field misClickDisabled:Z

.field mtScrollView:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;

.field scrollY:I

.field public signInDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, -0x1

    const v4, 0x3e4ccccd

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIsMaxTabReached:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbIsUpdateWindowListFinished:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbIsEnterStackAnimationEnabled:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isDialogVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isCheckBoxChecked:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->misClickDisabled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSignInDialogVisible:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityInstanceIndex:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isActivtyDestroying:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mUpdatedTabArray:Ljava/util/ArrayList;

    const-string v0, "MultiTabActivity"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMenuDisplayPossible:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->iterationCount:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mWasTabListAnimationStarted:Z

    const v0, 0x3f0ccccd

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

    const-string v0, "MultiWindowActivity"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LOG_TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIncognitoTabCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNormalTabCount:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mDestroyFullScreenBitmap:Z

    iput v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPreviousTabId:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->scrollY:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailFocused:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->m_shouldNotDragTab:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPinchDetect:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mZoomIn:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mZoomOut:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageViewVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isMaxTabDialogEnabled:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->MIN_X_DISTANCE_TRAVELED_THRESHOLD:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->MAX_Y_DISTANCE_TRAVELED_THRESHOLD:I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mAndroidScrollView:Landroid/widget/ScrollView;

    iput v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewIndex:I

    sget-object v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    const-string v0, "portraitScrollY"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    const-string v0, "landscapeScrollY"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbCloseOptionMenu:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->signInDialog:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mActionDownOnView:Z

    return-void
.end method

.method private CheckForMultiInstanceTabLimitReached()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isMaxTabDialogEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->createPopUpMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->m_shouldNotDragTab:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->m_shouldNotDragTab:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setUpdatedFullScreenBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V

    return-void
.end method

.method private animateScrollView()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getPortraitLayoutID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    const v2, 0x7f05000f

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeLayoutID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private createDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDoNotShowIncognitoCheck()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f040049

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a015e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isCheckBoxChecked:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$31;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$31;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoDialogStringTitleID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoDialogStringOkID()I

    move-result v4

    new-instance v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$33;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$32;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$32;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->createNewIncognitoTab()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    goto :goto_0
.end method

.method private createPopUpMenu()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0e0022

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f0a033a

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v0, "default"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "default"

    const-string v6, ""

    invoke-static {v4, v5, v6, v3}, Landroid/os/PersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    const-string v4, "CscFeature_Web_DisableBookmarkSync"

    invoke-static {v4}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuSyncTabsID()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsChildMode()Z

    move-result v4

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewIncognitoTabID()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuSyncTabsID()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private deleteUnusedInstance(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$36;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$36;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$36;->start()V

    return-void
.end method

.method private initWindowStateChangeListener()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    const-string v2, "initWindowStateChangeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-direct {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->getVersionCode()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    const-string v2, "Muiti window is not supported on this device."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$34;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    return-void
.end method

.method private setBackTabFocusBackground()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabFocusView()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getInterThumbnailBgFocus()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabGlowView()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getInterThumbnailBgPress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpdatedFullScreenBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V
    .locals 14

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-instance v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v9, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v11

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v10, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v1

    sub-int v1, v10, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntrolayoutBottomclippingHeight()I

    move-result v2

    sub-int v10, v1, v2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFullScreenThumbnail screen width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFullScreenThumbnail screen height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v10, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v10, :cond_5

    const/4 v8, 0x0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    int-to-float v1, v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    int-to-float v1, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v8

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v11

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntrolayoutBottomclippingHeight()I

    move-result v2

    sub-int v10, v1, v2

    goto/16 :goto_0

    :cond_5
    int-to-float v1, v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->iseasymode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v10, :cond_3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v10, :cond_3

    const/4 v8, 0x0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    int-to-float v1, v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    int-to-float v1, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v8

    goto/16 :goto_2
.end method

.method private showNoWindowsAvailableScreen()V
    .locals 7

    const/16 v6, 0x8

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getNoTabsLayoutID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v0, v4

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Web_ShowBubbleTextNoLayout"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getEmptyViewPopup()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateViewsCloseAllViews()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showNoWindowsAvailableScreen()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->disableOnlyBackButton()V

    return-void
.end method


# virtual methods
.method public SetStandardGroup()Ljava/util/ArrayList;
    .locals 8
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

    sget-boolean v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    if-eqz v5, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->isIsInCognito()Z

    move-result v5

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabCount()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNormalTabCount:I

    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNormalTabCount:I

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabUrl(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "chrome://tabspreview/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabCount()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIncognitoTabCount:I

    const/4 v2, 0x0

    :goto_3
    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIncognitoTabCount:I

    if-ge v2, v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_7

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public addNewTabInfo(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public addTabView(IIIZ)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move/from16 v9, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move/from16 v0, p2

    invoke-virtual {v3, v7, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentTabById(ZI)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabLayoutID()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v26, :cond_0

    move-object/from16 v8, v26

    const/16 v26, 0x0

    const v3, 0x7f0a017a

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCloseButtonViewID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleIconViewID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabSetByIdValid()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_f

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CURRENT_TAB_DIFFERENT_TITLE_COLOR_ENABLED:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabTitleImageID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v3, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    if-ltz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getPerspTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getPerspTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getPerspTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleImageID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabSetByIdTitle()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getStringAccessibilityButtonCloseTabID()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_10

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoBackgroundID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoTitleIconID()I

    move-result v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v3, :cond_14

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabSetByIdFullBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_13

    const/16 v18, 0x0

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_11

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_11

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-static {v0, v3, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v18

    :goto_4
    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageViewVisible:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$18;

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$18;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/ImageView;IZLandroid/widget/LinearLayout;I)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    if-eqz v3, :cond_8

    :cond_7
    new-instance v10, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;

    move-object/from16 v11, p0

    move-object v12, v8

    move/from16 v13, p2

    move v14, v7

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$19;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;IZLandroid/widget/ImageView;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_8
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$21;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$22;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$23;

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$23;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/ImageView;IZLandroid/widget/LinearLayout;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    if-eqz v3, :cond_a

    :cond_9
    new-instance v10, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$24;

    move-object/from16 v11, p0

    move-object v12, v8

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v15, v27

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$24;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;IZLandroid/widget/TextView;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_a
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$26;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabFocusView()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getInterThumbnailBgFocus()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabGlowView()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getInterThumbnailBgPress()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    if-gez p3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbIsEnterStackAnimationEnabled:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0, v6, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->enterStackAnimation(Ljava/lang/Boolean;IILandroid/view/View;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f80

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_0

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    if-eqz v7, :cond_2

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_INCOGNITO_TAB_DIFFERENT_TITLE_COLOR_ENABLED:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoBackGround()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v3, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_f
    if-eqz v7, :cond_4

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_INCOGNITO_TAB_DIFFERENT_TITLE_COLOR_ENABLED:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoBackGround()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v3, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_10
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabSetByIdThumbnail()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v18

    goto/16 :goto_4

    :catch_2
    move-exception v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->broadcastOutOfMemoryNotification()V

    goto/16 :goto_4

    :catch_3
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_12
    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_13
    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabSetByIdIsThumbnailAvailable()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v7, :cond_15

    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabSetByIdThumbnail()Landroid/graphics/Bitmap;

    move-result-object v25

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v21, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_16
    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_17
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    move/from16 v0, p3

    invoke-virtual {v3, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz p4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_19
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    move/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadClippedBitmap(Ljava/lang/ref/WeakReference;I)V

    goto/16 :goto_7
.end method

.method public bottomBarExitAnimation(IZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBottombarStub()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->iseasymode()I

    move-result v4

    if-ne v4, v7, :cond_4

    if-eqz v1, :cond_4

    const v4, 0x7f040051

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    new-array v3, v4, [I

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getStatusBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, v3, v7

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->canGoForward()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getForwardButton()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackwardButton()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->iseasymode()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    const v4, 0x7f040052

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSBrowserBottomToolbarHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x2bc

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSBrowserBottomToolbarHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getForwardButton()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mBottomBarLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackwardButton()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_3
.end method

.method public closeMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbCloseOptionMenu:Z

    return-void
.end method

.method public computeScrollY()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->SetStandardGroup()Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    mul-int v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    if-gt v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->disableBackButton()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$28;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$28;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$28;->start()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDragNDropInProgress(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDragNDropInProgress(Z)V

    goto :goto_1
.end method

.method public deleteTab(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-gt v4, v7, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-gt v4, v7, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeIncognitoTab(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->disableBackButton()V

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->updatePerspTabId()V

    :cond_3
    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;I)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;->start()V

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    sget-object v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundViewID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->usePageScroll()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x3c

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v5, 0x3ecccccd

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeNormalTab(I)V

    goto :goto_1
.end method

.method public deleteThumbnail(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->deleteThumbnail(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public disableBackButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateViewsCloseAllViews()V

    :cond_0
    return-void
.end method

.method public disableOnlyBackButton()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonLayoutID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonImageViewID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewNormalTabID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getWindowManagerTitleLeftMarginNoBack()I

    move-result v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x52

    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMenuDisplayPossible:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMenuDisplayPossible:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMenuDisplayPossible:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    const-string v4, "Assistant menu : KeyEvent.KEYCODE_MENU - isPopupMenuVisible == false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->createPopUpMenu()V

    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMenuDisplayPossible:Z

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailFocused:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    const/16 v2, 0x42

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mThumbnailKeyPressedTempGlowTab:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIsClickDisabled()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    return v6

    :cond_1
    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->scrollY:I

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :cond_3
    if-ne v0, v10, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-lt v8, v10, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V

    :cond_4
    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPinchDetect:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinchZoomAnimationInProgress()Z

    move-result v8

    if-ne v8, v6, :cond_5

    move v6, v7

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float v2, v8, v9

    mul-float v8, v2, v2

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPointerDistance:F

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x4120

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPointerDistance:F

    cmpl-float v8, v8, v4

    if-lez v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinched()Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v7, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object v3, v1

    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    move-object v3, v5

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v7, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->getFirstTouchedViewIndex()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getTouchedViewIndex(FFI)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->setFirstTouchedViewIndex(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mZoomIn:Z

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->performPinchZoom(Z)V

    :cond_7
    :goto_1
    iput v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPointerDistance:F

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinched()Z

    move-result v8

    if-ne v8, v6, :cond_7

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v7, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object v3, v1

    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    move-object v3, v5

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v7, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->getFirstTouchedViewIndex()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getTouchedViewIndex(FFI)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->setFirstTouchedViewIndex(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mZoomOut:Z

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->performPinchZoom(Z)V

    goto :goto_1

    :cond_b
    if-ne v0, v6, :cond_10

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->scrollY:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V

    :cond_d
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPinchDetect:Z

    if-nez v6, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    :cond_e
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPinchDetect:Z

    :cond_f
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    :cond_10
    and-int/lit16 v8, v0, 0xff

    const/4 v9, 0x5

    if-ne v8, v9, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_f

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v8, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_11
    sget-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ENABLED:Z

    if-eqz v8, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v8

    if-ne v8, v10, :cond_13

    sget-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ENABLE_PINCH_LANDSCAPE:Z

    if-nez v8, :cond_13

    :cond_12
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPinchDetect:Z

    move v6, v7

    goto/16 :goto_0

    :cond_13
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPinchDetect:Z

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float v6, v7, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPointerDistance:F

    goto :goto_2
.end method

.method public finishActivty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->closeOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public finishActivtyWithAnimation(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->closeOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNormalTabCount:I

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNormalTabCount:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIncognitoTabCount:I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIncognitoTabCount:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getIsClickDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->misClickDisabled:Z

    return v0
.end method

.method public getIsUpdateWindowListFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbIsUpdateWindowListFinished:Z

    return v0
.end method

.method public getSBrowserMainActivityInstanceIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityInstanceIndex:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getScrollView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScrollYPos()I
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->SetStandardGroup()Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "scrollPos"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v6

    if-ne v6, v8, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v5

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v6

    if-ne v6, v8, :cond_9

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ne v6, v7, :cond_1

    :cond_0
    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    add-int/lit8 v1, v6, -0x2

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v7

    add-int/2addr v6, v7

    mul-int v0, v6, v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    mul-int v4, v6, v7

    if-gez v3, :cond_7

    if-ge v3, v0, :cond_7

    move v3, v0

    :cond_3
    :goto_2
    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    if-nez v6, :cond_4

    const/4 v3, 0x0

    :cond_4
    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "scrollPos"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

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
    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iput v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

    div-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

    div-int/2addr v7, v8

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

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
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v7

    add-int/2addr v6, v7

    mul-int/2addr v6, v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v7

    sub-int v0, v6, v7

    goto :goto_3
.end method

.method public getScrollYPosPerspective()I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->SetStandardGroup()Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v8

    if-ne v8, v11, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "scrollPos"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v8

    if-ne v8, v11, :cond_8

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    if-ne v8, v9, :cond_1

    :cond_0
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    add-int/lit8 v2, v8, -0x2

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int v8, v7, v1

    mul-int v0, v8, v2

    add-int v8, v7, v1

    iget v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    mul-int v6, v8, v9

    if-gez v5, :cond_6

    if-ge v5, v0, :cond_6

    move v5, v0

    :cond_3
    :goto_1
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    if-nez v8, :cond_4

    const/4 v5, 0x0

    :cond_4
    return v5

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "scrollPos"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

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
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iput v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->NUM_OF_TABS:I

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v4

    int-to-float v4, v4

    sub-float p2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getStatusBarHeight()I

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
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

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

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mWasTabListAnimationStarted:Z

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getmActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmCurrentTabBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmCurrentViewingTabIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentViewingTabIndex:I

    return v0
.end method

.method public getmLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getmLoadBackgroundThumbnail()Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    return-object v0
.end method

.method public getmMultiTabAnimations()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    return-object v0
.end method

.method public getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    return-object v0
.end method

.method public getmMultiTabOutroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    return-object v0
.end method

.method public getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    return-object v0
.end method

.method public getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    return-object v0
.end method

.method public getmOperationState()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    return-object v0
.end method

.method public getmPopup()Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method public getmScrollView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getmSelectedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method public getmSelectedViewTabId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    return v0
.end method

.method public getmSuperView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getmTabInfos()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mUpdatedTabArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleNewTabCreation()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_NEWTAB_KEY_ANIM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterPortrait()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitPortrait()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterLandscape()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitLandscape()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public handleTabDeletion(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_UPDATE_VIEW_ONDELETION:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    sget v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ZOOM_OUT_DELETE_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-gt v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_2
    :goto_2
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :goto_3
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->deleteDragNDropTab(Landroid/view/View;)V

    goto :goto_3
.end method

.method public isActivtyDestroying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isActivtyDestroying:Z

    return v0
.end method

.method public isImageViewVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageViewVisible:Z

    return v0
.end method

.method public isInSpenMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    return v0
.end method

.method public isMaxTabDialogEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isMaxTabDialogEnabled:Z

    return v0
.end method

.method public isTabManagerInMultiWindowStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ismNeedToResetOperationState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    return v0
.end method

.method public loadBackgroundThumbnail()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public matchXPosofScrollView(FF)Z
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v5

    int-to-float v5, v5

    sub-float p2, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float p1, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTopGapDueToCloseButtonMargin()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v4

    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFramesID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v1, 0x41

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finishActivty()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->IsIntroExitInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->closeMenu()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setisClickDisabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->CLOSE_BUTTON_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DND:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v1, v2, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeIncognitoTab(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeNormalTab(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitTabManagerAnimation()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeVerticalViewGap()I

    move-result v4

    add-int v1, v3, v4

    div-int v0, v2, v1

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v3

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateWindowList()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCALEDOWN_DEL_ANIMATION:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_ALPHA_ANIMATION:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ENABLED:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_ENTERSTACK_TRANSLATE_ANIMATION:Z

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    :goto_0
    if-eqz p1, :cond_0

    const-string v3, "firstbuild"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSpenMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SBrowserMainActivityContextId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SBrowserMainActivityInstanceIndex"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityInstanceIndex:I

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityInstanceIndex:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    :goto_2
    return-void

    :cond_5
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCALEDOWN_DEL_ANIMATION:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_ALPHA_ANIMATION:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ENABLED:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_ENTERSTACK_TRANSLATE_ANIMATION:Z

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    goto/16 :goto_1

    :cond_7
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->updateCurrentTabBitmapIfnotPresent()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setFullscreen(Z)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiTabLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->bottomBarExitAnimation(IZ)V

    :cond_8
    if-eqz p1, :cond_c

    const-string v3, "isDialogVisible"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isDialogVisible:Z

    const-string v3, "isCheckBoxChecked"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isCheckBoxChecked:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->createDialog()V

    :cond_9
    const-string v3, "isSignInDialogVisible"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showDialog()V

    :cond_a
    const-string v3, "isMaxTabDialogEnabled"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    :cond_b
    const-string v3, "previousTabId"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPreviousTabId:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPreviousTabId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPreviousTabId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabBitmp()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    :cond_d
    new-instance v15, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$MyGestureDetector;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$MyGestureDetector;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->configuration:Landroid/view/ViewConfiguration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->minScrollDistance:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMinimumVelocity:I

    new-instance v3, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->SetStandardGroup()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->usePageScroll()Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mAndroidScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mAndroidScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    :goto_3
    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCROLL_BAR_ENABLED:Z

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getPortraitLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageList:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeLayoutID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabManagerOptionsLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$3;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$4;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz p1, :cond_f

    const-string v3, "isPopupMenuVisible"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v20, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$5;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$6;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$7;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$9;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const v4, 0x3f333333

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3e4ccccd

    const/high16 v4, 0x3f80

    invoke-direct {v14, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v14, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_19

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_OUTRO_ENABLED:Z

    if-eqz v3, :cond_10

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    :cond_10
    :goto_4
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageList:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupLayoutTransition()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v3, :cond_1a

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$10;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateWindowList()V

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->usePageScroll()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mtScrollView:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->setParentLayout(Landroid/view/ViewGroup;)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v3, :cond_14

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_13

    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrowserToolBarBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const v3, 0x7f0a018e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v3, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    int-to-long v3, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual/range {v21 .. v21}, Landroid/animation/AnimatorSet;->start()V

    :cond_14
    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFramesID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    :cond_15
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$12;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v3

    if-nez v3, :cond_16

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    if-eqz v3, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiTabScreenLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDropHandler(Landroid/content/Context;Landroid/view/View;)V

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->initWindowStateChangeListener()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showHidePerspImageView(Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->broadcastOutOfMemoryNotification()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mtScrollView:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mtScrollView:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_3

    :cond_19
    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v3, :cond_11

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->animateTempImage(I)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupLayoutTransition()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v3, :cond_1d

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$11;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateWindowList()V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v3, :cond_1c

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->animateTempImage(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    if-nez v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f266666

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$13;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isActivtyDestroying:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->closeMenu()V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setisClickDisabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollViewListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollViewListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    :cond_2
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOptionsLayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->cancel(Z)Z

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->cancel(Z)Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadBackgroundThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    :cond_6
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollToHandler:Landroid/os/Handler;

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->destroy()V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mDestroyFullScreenBitmap:Z

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPreviousTabId:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->destroy(ZI)V

    :cond_a
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_OUTRO_ENABLED:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->destroy()V

    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->destroy()V

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageList:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_10

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    :goto_1
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mAndroidScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->destroy()V

    goto :goto_0

    :cond_10
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonLayoutID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 9

    const-wide/high16 v7, 0x4090

    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

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

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_6

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    :cond_0
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BACK_KEY_ANIM:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_4

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitTabManagerAnimation()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimBackButtonEnterPortrait()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimBackButtonExitPortrait()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitTabManagerAnimation()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimBackButtonEnterLandscape()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimBackButtonExitLandscape()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v2, :cond_8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewNormalTabID()I

    move-result v3

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->createNewNormalTab()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_NEWTAB_KEY_ANIM:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterPortrait()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitPortrait()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterLandscape()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitLandscape()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v2, :cond_9

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuCloseAllTabsID()I

    move-result v3

    if-ne v2, v3, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->SetStandardGroup()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeAllTabs()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateViewsCloseAllViews()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$14;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$14;->start()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v2, :cond_b

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuSyncTabsID()I

    move-result v3

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v1, "MultiWindowAcivity"

    const-string v2, "In sync_tabs if"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showDialog()V

    goto/16 :goto_0

    :cond_a
    const-string v2, "MultiWindowAcivity"

    const-string v3, "In sync_tabs else"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setSignedInWithDialog(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getSyncTabActivityClass()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SBrowserMainActivityContextId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x41

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewIncognitoTabID()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isDialogVisible:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->createDialog()V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbCloseOptionMenu:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewNormalTabID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewNormalTabID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuCloseAllTabsID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    const-string v0, "CscFeature_Web_DisableBookmarkSync"

    invoke-static {v0}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuSyncTabsID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getIsChildMode()Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuNewIncognitoTabID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuCloseAllTabsID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMenuCloseAllTabsID()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SBrowserMainActivityContextId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    const-string v0, "SBrowserMainActivityInstanceIndex"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityInstanceIndex:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->shouldStartSyncActivity(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getSyncTabActivityClass()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SBrowserMainActivityContextId"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x41

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->postStartSyncActivity()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v1

    int-to-float v2, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f266666

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mDestroyFullScreenBitmap:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    const-string v0, "firstbuild"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isDialogVisible"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isDialogVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isCheckBoxChecked"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isCheckBoxChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isMaxTabDialogEnabled"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isMaxTabDialogEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isSignInDialogVisible"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSignInDialogVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SBrowserMainActivityContextId"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SBrowserMainActivityInstanceIndex"

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSBrowserMainActivityInstanceIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "previousTabId"

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mPreviousTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isPopupMenuVisible"

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->registerForNotifications()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->unRegisterForNotifications()V

    :cond_0
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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;

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
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method

.method public onWindowStatusChanged()V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showHidePerspImageView(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewWidth()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, v3, :cond_2

    div-int v1, v0, v2

    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->reCreateWindowList()V

    :cond_1
    return-void

    :cond_2
    div-int v1, v3, v2

    goto :goto_0
.end method

.method public pointToPosition(FF)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v5

    int-to-float v5, v5

    sub-float p2, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getStatusBarHeight()I

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
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->usePageScroll()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v3

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float p1, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTopGapDueToCloseButtonMargin()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v3, p1

    float-to-int v5, p2

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    goto :goto_1

    :cond_4
    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->usePageScroll()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float p1, v3, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTopGapDueToCloseButtonMargin()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public reCreateWindowList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->checkDeletion()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->SetStandardGroup()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateWindowList()V

    return-void
.end method

.method public resetIsMaxTabDialogEnabledFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isMaxTabDialogEnabled:Z

    return-void
.end method

.method public sBrowserToolbarView(ZIZ)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolbarStarIcon()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getUrlbarId()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const/16 v16, 0x0

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMainActionBarSecretBG()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolbarMultiwindow()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolbarOptionMenu()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolbarMultiwindowBitmap()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolbarOptionMenuBitmap()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCountId()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080057

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabUrl(ZIZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    if-eqz v18, :cond_6

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/Tab;->isPageBookMarked()Z

    move-result v18

    if-nez v18, :cond_5

    const v18, 0x7f020100

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_3
    :goto_1
    if-nez v16, :cond_9

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolBarMicIconId()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v18, 0x7f020111

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v18, "CscFeature_Web_DisableVoiceSearch"

    invoke-static/range {v18 .. v18}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    const/4 v4, 0x0

    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_3
    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setUrl(Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCountId()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const v18, 0x7f020101

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    if-nez v18, :cond_3

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/Tab;->isPageBookMarked()Z

    move-result v18

    if-nez v18, :cond_7

    const v18, 0x7f020100

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    const v18, 0x7f020101

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getToolbarRefreshIcon()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v18, 0x7f020178

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v18, "about:blank"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public saveReturnTabPos()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->computeScrollY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->computeScrollY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 3

    const/16 v2, 0x400

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public setImageViewVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageViewVisible:Z

    return-void
.end method

.method public setIsEnterStackAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbIsEnterStackAnimationEnabled:Z

    return-void
.end method

.method public setIsUpdateWindowListFinished(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mbIsUpdateWindowListFinished:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->notifyWindowUpdated()V

    :cond_0
    return-void
.end method

.method public setMaxTabDialogEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isMaxTabDialogEnabled:Z

    return-void
.end method

.method public setReturnTabDefault()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MAX_TAB_REACHED:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mIsMaxTabReached:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    move-object v0, p1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setisClickDisabled(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->misClickDisabled:Z

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    sget v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ENTER_STACK_ANIMATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setmFirstCreated(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setBackTabFocusBackground()V

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    return-void
.end method

.method public setmLayout(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setmNeedToResetOperationState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mNeedToResetOperationState:Z

    return-void
.end method

.method public setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCloseButtonViewID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setmSelectedView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedView:Landroid/view/View;

    return-void
.end method

.method public setmSelectedViewTabId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    return-void
.end method

.method public setmTabInfos(Landroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public showDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogThemeID()I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringSigninTextID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringCancel()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$17;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$17;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$16;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSyncTabsDialogStringOk()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$15;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->signInDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSignInDialogVisible:Z

    return-void
.end method

.method public showHidePerspImageView(Z)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v1

    int-to-float v2, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f266666

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSpenMode:Z

    if-nez v2, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->updatePerspBitmap(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_7

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->updatePerspBitmap(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->updatePerspBitmap(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateCurrentTabFocus(II)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mTabInfos:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_INCOGNITO_TAB_DIFFERENT_TITLE_COLOR_ENABLED:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIncognitoBackGround()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CURRENT_TAB_DIFFERENT_TITLE_COLOR_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabTitleImageID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleImageID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateFullScreenThumbnail(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/ImageView;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadFullScreenSoftBitmapHandle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadFullScreenSoftBitmapHandle:Landroid/os/Handler;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFullScreenSoftBitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    :cond_1
    return-void
.end method

.method public updateThumbnail(IZ)V
    .locals 10

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v8, :cond_0

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz p2, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabThumbnailById(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabTitleById(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz p2, :cond_6

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v2, v8, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabTitleById(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    new-instance v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$29;

    invoke-direct {v8, p0, p1, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$29;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;ILandroid/widget/ImageView;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_7
    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLoadSoftBitmapWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v9, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadClippedBitmap(Ljava/lang/ref/WeakReference;I)V

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    const-string v6, ""

    if-eqz p2, :cond_c

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabThumbnailById(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getIncognitoTabTitleById(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz p2, :cond_d

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v2, v8, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    if-eqz v8, :cond_9

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    :cond_9
    const/4 v3, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getNormalTabTitleById(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_d
    new-instance v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$30;

    invoke-direct {v8, p0, p1, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$30;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;ILandroid/widget/ImageView;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadSoftwareBitmapHandle:Landroid/os/Handler;

    invoke-direct {v1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v8

    invoke-virtual {v8, v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    goto :goto_4
.end method

.method public updateWindowList()V
    .locals 15

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->disableBackButton()V

    :goto_0
    return-void

    :cond_0
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setIsUpdateWindowListFinished(Z)V

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->DEFAULT_NUM_OF_TABS_PER_ROW:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MULTIWINDOW_ENABLED:Z

    if-eqz v12, :cond_d

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v12, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v10

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundWidth()I

    move-result v8

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getScrollViewWidth()I

    move-result v5

    if-ge v5, v10, :cond_a

    div-int v7, v5, v8

    :goto_1
    if-nez v7, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-lez v7, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v7}, Landroid/widget/GridLayout;->setColumnCount(I)V

    mul-int v12, v8, v7

    sub-int v2, v10, v12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v9

    sub-int v11, v9, v2

    const/4 v12, 0x1

    if-ne v7, v12, :cond_b

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/lit8 v12, v12, -0xa

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isTabManagerInMultiWindowStatus()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getWindowWidth()I

    move-result v10

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewWidth()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeVerticalViewGap()I

    move-result v13

    add-int v8, v12, v13

    div-int v7, v10, v8

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-nez v12, :cond_4

    if-lez v7, :cond_4

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v7}, Landroid/widget/GridLayout;->setColumnCount(I)V

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_5

    if-lt v0, v3, :cond_e

    :cond_5
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->cancel(Z)Z

    :cond_6
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundViewID()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->usePageScroll()Z

    move-result v12

    if-nez v12, :cond_7

    const/16 v12, 0x3c

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_7
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getBackButtonImageViewID()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->cancel(Z)Z

    :cond_9
    new-instance v12, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-direct {v12, p0, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;Ljava/util/ArrayList;)V

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->loadThumbnail:Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;

    const/4 v13, 0x0

    new-array v13, v13, [Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/multiwindow/LoadInitialThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setIsUpdateWindowListFinished(Z)V

    goto/16 :goto_0

    :cond_a
    div-int v7, v10, v8

    goto/16 :goto_1

    :cond_b
    if-le v10, v5, :cond_c

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09022e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_c
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v4}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09022e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mImageGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v7}, Landroid/widget/GridLayout;->setColumnCount(I)V

    goto/16 :goto_2

    :cond_e
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v0, :cond_5

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {p0, v0, v12, v13, v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->addTabView(IIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method
