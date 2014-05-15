.class public Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
.super Landroid/widget/LinearLayout;
.source "LocationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$16;,
        Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;,
        Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;,
        Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_ENG_MODE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "LocationBar.java"

.field private static final PAGE_LOAD_MAX_LIMIT:I = 0x64

.field private static final PROGRESSBAR_START_INDEX:I

.field private static final VALUE_ZERO:I


# instance fields
.field private EnableFingerprint:Z

.field MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

.field private deleteKey:Z

.field private mActivityRuleManager:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;

.field protected mBookmarkStarButton:Landroid/widget/ImageView;

.field private mBookmarkStarButtonClicked:Z

.field private final mClearSuggestionsOnDismiss:Z

.field protected mContext:Landroid/content/Context;

.field private final mDeferredNativeRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeleteButton:Landroid/widget/ImageView;

.field private mDragAndDropListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;

.field private mEditTextDefaultBg:Landroid/graphics/drawable/Drawable;

.field private mEditTextFocusedBg:Landroid/graphics/drawable/Drawable;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected mFingerprintStatus:Z

.field private mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

.field private mIgnoreURLBarModification:Z

.field private mIsActvityManagerBindSuccess:Z

.field private mIsReaderClickable:Z

.field private mLastUrlEditWasDelete:Z

.field private mLocationBarContainer:Landroid/view/View;

.field private mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

.field protected mMicBtn:Landroid/widget/ImageView;

.field public mNativeLocationBar:I

.field protected mNavigationButton:Landroid/widget/ImageView;

.field protected mNavigationFakeHint:Landroid/widget/TextView;

.field mPopup:Landroid/widget/ListPopupWindow;

.field protected mPopupMinimizedButton:Landroid/widget/ImageView;

.field private mProgBarStatus:I

.field public mProgressValue:I

.field protected mReaderButton:Landroid/widget/ImageView;

.field private mReaderChromeView:Lorg/chromium/content/browser/ContentView;

.field public mReaderFailedUrl:Ljava/lang/String;

.field private mReaderUrl:Ljava/lang/String;

.field protected mReloadButton:Landroid/widget/ImageView;

.field private mRequestSuggestions:Ljava/lang/Runnable;

.field private mResources:Landroid/content/res/Resources;

.field private mSecurityButton:Landroid/widget/ImageView;

.field private mSecurityButtonShown:Z

.field private mStateListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;

.field private mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

.field protected mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

.field private mTaskRuleId:I

.field protected mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

.field protected mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

.field private mUpdateSuggestionPopupRunnable:Ljava/lang/Runnable;

.field protected mUpdateUrlFocus:Z

.field public mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

.field protected mUrlTextWatcher:Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;

.field public sState:I

.field public sUrlHasFocus:Z

.field public securityValue:I

.field private typedString:Ljava/lang/String;

.field private urlProgressCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->IS_ENG_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeferredNativeRunnables:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButtonClicked:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationFakeHint:Landroid/widget/TextView;

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgressValue:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderFailedUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintStatus:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mResources:Landroid/content/res/Resources;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsActvityManagerBindSuccess:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUpdateSuggestionPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->EnableFingerprint:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUpdateUrlFocus:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->deleteKey:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mTaskRuleId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLastUrlEditWasDelete:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mClearSuggestionsOnDismiss:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgBarStatus:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->initializeUiElements()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLastUrlEditWasDelete:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsActvityManagerBindSuccess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButtonClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButtonClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSuggestionPopupPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mClearSuggestionsOnDismiss:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Lorg/samsung/chrome/browser/SbrLocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addActivityRuleForReadingList()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0xfd20

    new-instance v6, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;

    const-string v7, "Context_Provider"

    const-string v8, "TIME_NOW"

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    const-string v8, "TIME"

    invoke-direct {v7, v8}, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;->equal(Ljava/lang/String;)Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->specifier(Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;)Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->build()Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    const-string v6, "ReadingListRule"

    invoke-direct {v2, v6, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;-><init>(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/Event;)V

    new-instance v6, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;

    const-string v7, "ReadingListRule"

    invoke-direct {v6, v7}, Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->addActionParam(Lcom/samsung/android/internal/intelligence/taskautomation/ActionParam;)V

    const-string v6, "com.sec.android.app.sbrowser.readinglist.ui.ReadingListTaskAutomationRecevier"

    invoke-virtual {v2, v6}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->setActionParamReceiver(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->setEnable(Z)V

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mActivityRuleManager:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->addActivityRule(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mTaskRuleId:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mTaskRuleId:I

    if-ge v6, v5, :cond_0

    const-string v5, "AnotherActivity::addActivityRuleByDataClass"

    const-string v6, "Failed to add rule."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v5, "Exception"

    const-string v6, "NullPointException occured."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "Exception"

    const-string v6, "IllegalArgumentException occured."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v5, "Exception"

    const-string v6, "IllegalArgumentException occured."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private getContentView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrLocationBar;->nativeGetUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initSuggestionList()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getSuggestionListItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-nez v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setSoftInputMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSuggestionPopupPosition()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->setSuggestionSelectionHandler(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;)V

    :cond_1
    return-void
.end method

.method private initializeUiElements()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->EnableFingerprint:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->EnableFingerprint:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a0054

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintIcon:Landroid/widget/ImageView;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getHoverPreviewFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a01fe

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01fb

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->clearFocus()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setLocationBar(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDragAndDropListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDragAndDropListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const v1, 0x7f0a01f7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationButton:Landroid/widget/ImageView;

    const v1, 0x7f0a01fa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mEditTextDefaultBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mEditTextFocusedBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a01f9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01f8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationFakeHint:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    return-void
.end method

.method private onDeleteButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setDeleteBtnFlag(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setVoiceVisibility()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->notifyPageStopped()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReloadVisibility()V

    goto :goto_0
.end method

.method private setFakeHintVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationFakeHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationFakeHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setCursorVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setCursorVisible(Z)V

    goto :goto_0
.end method

.method private setStateEdited()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setVoiceVisibility()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    goto :goto_0
.end method

.method private setStateHighlighted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mEditTextFocusedBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStateNormal()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mEditTextDefaultBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateReloadVisibility()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateBookmarkStarButtonStatus()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getHomeScreenMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setTextSize(IF)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setTextSize(IF)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    goto :goto_1
.end method

.method private showPageInfo()V
    .locals 8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f04005c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v5, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setTitleAndUrl(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0117

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c007c

    new-instance v7, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$11;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$11;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v5, 0x7f0c0119

    new-instance v6, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$12;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$12;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private updateNavigationButton(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    goto :goto_0
.end method

.method private updateSuggestionPopupPosition()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->positionSuggestionPopup(Landroid/widget/ListPopupWindow;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$14;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUpdateSuggestionPopupRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUpdateSuggestionPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling positionSuggestionView before creating the popup."

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->addTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsAutoCompleteEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setSelected(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->typedString:Ljava/lang/String;

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->notifyTextChanged(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->stopAutoComplete(Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteVisibility()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    if-nez v1, :cond_6

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLastUrlEditWasDelete:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setSelection(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Multiple Suggestion requests in flight."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_7
    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    if-nez v1, :cond_8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setVoiceVisibility()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    goto :goto_3
.end method

.method public backKeyPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setUrlToPageUrl()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->updateCurrentTabDisplayStatus(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected changeState(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mStateListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mStateListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;->onStateChanged(I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setStateNormal()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setStateHighlighted()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setStateEdited()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected cleanUpLocationBar()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonVisibilty(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z

    return-void
.end method

.method public clearLoadProgressIndicator()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setLoadProgress(I)V

    return-void
.end method

.method public clearSecurityIcon()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;->NONE:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSecurityIcon(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNativeLocationBar:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrLocationBar;->destroy()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNativeLocationBar:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->onLocationBarDestroy()V

    return-void
.end method

.method public dismissListReaderPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragDropListner()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDragAndDropListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;

    return-object v0
.end method

.method public getIsDeleteKeyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->deleteKey:Z

    return v0
.end method

.method public getLoadProgress()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgBarStatus:I

    return v0
.end method

.method public getNavigationButtonVisiblity()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getProgressValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgressValue:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrLocationBar;->getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    return v0
.end method

.method public getSmartDB()Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getSmartDB()Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    return v0
.end method

.method public getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    return-object v0
.end method

.method public getTypedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->typedString:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    return-object v0
.end method

.method public hideSuggestions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSuggestionsListVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->clearSuggestions(Z)V

    return-void
.end method

.method protected ignoreURLBarModifcationToExtend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    return v0
.end method

.method public invalidateSuggestionList(ZZ)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->initSuggestionList()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->notifySuggestionsChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSuggestionsListVisibility(Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->postInvalidateDelayed(J)V

    :cond_1
    return-void
.end method

.method public isAvailableVoiceSearch()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const-string v7, "user"

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v7, "CscFeature_Web_DisableVoiceSearch"

    invoke-static {v7}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v6, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public isSuggestionListShown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlProgressCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->urlProgressCanceled:Z

    return v0
.end method

.method public isViewPagerDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isViewPagerDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewPagerVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isTabSwipeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public notifySuggestionDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->initiateVoiceSearch()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->notifyReloadLoad()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setStateNormal()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->onDeleteButtonClick()V

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setSwitchingToReader(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->launchReaderView()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :sswitch_4
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->showPageInfo()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0026 -> :sswitch_3
        0x7f0a01fa -> :sswitch_4
        0x7f0a01fb -> :sswitch_0
        0x7f0a01fc -> :sswitch_1
        0x7f0a01fd -> :sswitch_2
    .end sparse-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "VerificationLog"

    const-string v5, "Calling LocationBar : onFocusChange -begin"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->isFindTextToolbarShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setFocusToSearchInput()V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    if-ne p1, v4, :cond_a

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUpdateUrlFocus:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4, v6, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setSelection(II)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->isUrlBarActive()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    neg-int v5, v3

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintStatus:Z

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;->NONE:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSecurityIcon(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->selectAll()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isSMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    :cond_7
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4, v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setStateofURL(I)V

    :goto_3
    move v1, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v4, p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->onUrlFocusChange(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez p2, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->isToolBitmapCaptured()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$8;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    const-wide/16 v5, 0x190

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    const-string v4, "VerificationLog"

    const-string v5, "Calling LocationBar : onFocusChange -end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    if-ne v4, v7, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintStatus:Z

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setUrlToPageUrl()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/samsung/chrome/browser/SbrLocationBar;->getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;->values()[Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSecurityIcon(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;)V

    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->MainActivityUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->setStateofURL(I)V

    goto/16 :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsAutoCompleteEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x43

    if-ne p2, v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteKeyEnabled(Z)V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->length()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteKeyEnabled(Z)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getVisibility()I

    move-result v7

    if-nez v7, :cond_14

    const/16 v7, 0x42

    if-ne p2, v7, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    :cond_2
    const/16 v7, 0x17

    if-ne p2, v7, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_14

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getSuggestionListItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->findMatchingUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    iget v7, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    const/16 v7, 0x17

    if-ne p2, v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    move-object v2, v7

    check-cast v2, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->getSuggestionSelectionHandler()Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;->onSelection(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V

    :cond_4
    move v5, v1

    :goto_0
    return v5

    :cond_5
    if-nez v4, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getDismissedSuggestionList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->findMatchingUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mSimplifiedUrlLocation:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mSimplifiedUrlLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mOriginalUrlLocation:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mOriginalUrlLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    move-object v4, v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    :cond_9
    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object v4, v6

    :cond_a
    if-nez v4, :cond_e

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-virtual {v7, v6}, Lorg/samsung/chrome/browser/SbrLocationBar;->GetUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    :goto_1
    const-string v7, "rtsp://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v4, v6

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_d
    sget-boolean v7, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->IS_ENG_MODE:Z

    if-eqz v7, :cond_12

    const-string v7, "CscFeature_Web_EnableImage2Play"

    invoke-static {v7}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "about:imideodebugon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "LocationBar.java"

    const-string v8, "Imideo service DEBUG ON"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setImideoDebugMode(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    const-string v8, "Imideo service DEBUG ON"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    move v5, v1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_f
    const-string v7, "about:imideodebugoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "LocationBar.java"

    const-string v8, "Imideo service DEBUG OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setImideoDebugMode(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    const-string v8, "Imideo service DEBUG OFF"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    move v5, v1

    goto/16 :goto_0

    :cond_10
    const-string v7, "about:imideoforceon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "LocationBar.java"

    const-string v8, "Imideo service force ON"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setImideoDebugMode(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    const-string v8, "Imideo service force ON"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    move v5, v1

    goto/16 :goto_0

    :cond_11
    const-string v7, "about:imideoforceoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "LocationBar.java"

    const-string v8, "Imideo service force OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setImideoDebugMode(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    const-string v8, "Imideo service force OFF"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    move v5, v1

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    if-eqz v4, :cond_13

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v7, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    :cond_13
    :goto_2
    move v5, v1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_16

    const/16 v7, 0x42

    if-eq p2, v7, :cond_16

    const/16 v7, 0x17

    if-eq p2, v7, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_15

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setSelection(I)V

    goto/16 :goto_0

    :cond_15
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_19

    const/16 v7, 0x42

    if-eq p2, v7, :cond_18

    const/16 v7, 0x17

    if-ne p2, v7, :cond_19

    :cond_18
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_19

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    move-object v2, v7

    check-cast v2, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListAdapter:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->getSuggestionSelectionHandler()Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;->onSelection(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V

    goto/16 :goto_2

    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public onNativeLibraryReady()V
    .locals 4

    new-instance v2, Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-direct {v2}, Lorg/samsung/chrome/browser/SbrLocationBar;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrLocationBar;->Init()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNativeLocationBar:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNativeLocationBar:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlTextWatcher:Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->initAutoCompleteController()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeferredNativeRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeferredNativeRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeferredNativeRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsAutoCompleteEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteKeyEnabled(Z)V

    :cond_0
    if-eqz p4, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLastUrlEditWasDelete:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSmartSuggestBarFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->addSmartSuggestions()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$9;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected positionSuggestionPopup(Landroid/widget/ListPopupWindow;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    return-void
.end method

.method public removeReaderVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->dismissListReaderPopupMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    :cond_0
    return-void
.end method

.method public removeTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->removeTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V

    return-void
.end method

.method public setBaseUi(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    return-void
.end method

.method public setBookmarkStarButtonClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButtonClicked:Z

    return-void
.end method

.method public setBookmarkStarButtonLitup(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setBookmarkStarButtonVisibilty(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setController(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    return-void
.end method

.method public setDeleteKeyEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->deleteKey:Z

    return-void
.end method

.method public setDeleteVisibility()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected setFaviconVisibility(Z)V
    .locals 0

    return-void
.end method

.method protected setLoadProgress(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgBarStatus:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgBarStatus:I

    :cond_0
    return-void
.end method

.method protected setNavigationButtonVisiblity(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    return-void
.end method

.method public setPopupViewerButtonVisiblity(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopupMinimizedButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgressValue(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mProgressValue:I

    return-void
.end method

.method public setReaderButton(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getToolbarView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReadingListCardFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mActivityRuleManager:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mActivityRuleManager:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mActivityRuleManager:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->Initialize(Landroid/content/Context;Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setReaderButtonClickableIfNot()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setReaderClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z

    return-void
.end method

.method public setReaderVisibility()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setReloadVisibility()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocationBar.java"

    const-string v1, "setSearchQuery : query is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNativeLocationBar:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeferredNativeRunnables:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarText(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setSelection(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->runAutoCompleteQuery(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setNavigationButtonVisiblity(I)V

    goto :goto_0
.end method

.method public setSecurityIcon()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrLocationBar;->getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;->values()[Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSecurityIcon(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;)V

    :cond_0
    return-void
.end method

.method public setSelectorState(Z)V
    .locals 0

    return-void
.end method

.method public setStateListener(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mStateListener:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$StateListener;

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->changeState(I)V

    return-void
.end method

.method protected setSuggestionsListVisibility(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSuggestionPopupPosition()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->isSuggestionComingFromVoiceSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->show()V

    goto :goto_0
.end method

.method public setTypedString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->typedString:Ljava/lang/String;

    return-void
.end method

.method public setUiElementsVisibility(I)V
    .locals 0

    return-void
.end method

.method public setUrlBarState(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUrlBarText(Ljava/lang/String;Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setUrl(Ljava/lang/String;Z)Z

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIgnoreURLBarModification:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getState()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setFakeHintVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setUrlProgressCanceled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->urlProgressCanceled:Z

    return-void
.end method

.method public setVoiceVisibility()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->isAvailableVoiceSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mMicBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReaderModeListPopup(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x101006b

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c031f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0320

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040071

    const v5, 0x7f0a01d8

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v2, 0x1da

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method public updateBookmarkIcon()V
    .locals 0

    return-void
.end method

.method public updateFingerprintIcon(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->EnableFingerprint:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintStatus:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintStatus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mFingerprintIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLoadProgress(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setLoadProgress(I)V

    return-void
.end method

.method public updateLoadingState(ZZ)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setUrlToPageUrl()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateNavigationButton(Z)V

    :cond_1
    return-void
.end method

.method public updateReaderVisibility(Lorg/chromium/content/browser/ContentView;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderChromeView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderChromeView:Lorg/chromium/content/browser/ContentView;

    if-eq v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReaderUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeReaderVisibility()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    const-string v2, "false"

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mRecognizeArticle:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateReloadVisibility()V
    .locals 8

    const/16 v7, 0x64

    const/16 v6, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setVoiceVisibility()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v4

    if-ge v4, v7, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isShowingInterstitialPage()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setDeleteVisibility()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c02db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReloadVisibility()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isShowingInterstitialPage()Z

    move-result v0

    :cond_4
    if-eqz v3, :cond_5

    if-lt v1, v7, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "about:blank"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "chrome://newtab/#incognito"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationFakeHint:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mNavigationFakeHint:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateSecurityIcon(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$16;->$SwitchMap$com$sec$android$app$sbrowser$toolbar$ui$LocationBar$SecurityLevel:[I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;->NONE:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SecurityLevel;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateState()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->changeState(I)V

    return-void
.end method

.method public updateUrlBarFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUpdateUrlFocus:Z

    return-void
.end method
