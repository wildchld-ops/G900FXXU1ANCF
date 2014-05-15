.class public Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
.super Ljava/lang/Object;
.source "ToolBarUITranslations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$IToolBarPreferenceChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToolBarUITranslations"

.field private static mFrameRateForInfobar:I


# instance fields
.field private mActOnUpdateFrameInfoAfterAttchTab:Z

.field private mBottomBar:Landroid/view/View;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

.field private mContext:Landroid/content/Context;

.field private mControlContainer:Landroid/view/ViewGroup;

.field private mCurPageURL:Ljava/lang/String;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mFixedBootomBarHeight:F

.field private mFixedToolBarHeight:F

.field private mFrameRate:I

.field private mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field private mIsHorizontalScroll:Z

.field private mIsInfoBarShown:Z

.field private mIsShowingToolBar:Z

.field private mIsToolbarVisible:Z

.field private mIsUpdateFrameInfoReceived:Z

.field private misEasyModeOn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsShowingToolBar:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->misEasyModeOn:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsInfoBarShown:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsUpdateFrameInfoReceived:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->misEasyModeOn:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->misEasyModeOn:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsUpdateFrameInfoReceived:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsUpdateFrameInfoReceived:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsInfoBarShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isBrowserInternalURLScheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isKeyboardShowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isBrowserInternalURLScheme()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "ToolBarUITranslations"

    const-string v2, "HIDEURL- mCurPageURL is null, generally won\'t happen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    const-string v2, "ftp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    const-string v2, "about:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFindOnPageUIShown()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private isKeyboardShowed()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPortraitOrientationMode()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ShowToolBarManually()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ToolBarUITranslations"

    const-string v1, "HIDEURL - ShowToolBarManually - mControlContainer & mBottomBar objects are null, it won\'t happen in general"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public attachCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-ne v0, p1, :cond_2

    const-string v0, "ToolBarUITranslations"

    const-string v1, "HIDEURL - attachCurrentTab :: SAME TAB."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isInfoBarPresent(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->setAssociatedToolbarDisplayState(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->setAssociatedToolbarDisplayState(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->unRegisterScrollOrFlingListner()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->unRegisterScrollOrFlingListner()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->unRegisterScrollOrFlingListner()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isTabSwitchUsingAirBrowseGesture()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    :cond_5
    :goto_1
    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isBrowserInternalURLScheme()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_8
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_1

    :cond_a
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z

    goto/16 :goto_0
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    return-void
.end method

.method public getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    :cond_0
    return-object v0
.end method

.method public hideToolBarAfterAirBrowseAnimation()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->hideToolBarUsingTopControl()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    goto :goto_1
.end method

.method public hideToolBarUsingTopControl()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_0
    return-void
.end method

.method public hideToolbarOnFullScreenMode()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsShowingToolBar:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getFrameRate()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    add-float/2addr v2, v0

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_2
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsShowingToolBar:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    add-float/2addr v2, v0

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method public initializePositionsForHideUrlBar()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->getIsKeyBoardOrDropDownVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public isBottomBarVisible()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v1, "ToolBarUITranslations"

    const-string v2, "mBottomBar is Null, generally won\'t happen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHideToolBarCalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsShowingToolBar:Z

    return v0
.end method

.method public isInfoBarDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsInfoBarShown:Z

    return v0
.end method

.method public isToolbarVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    return v0
.end method

.method public registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V

    :cond_0
    return-void
.end method

.method public removeMarginsWhenFindOnPageOperationDone(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    const-string v0, "ToolBarUITranslations"

    const-string v1, "HIDEURL - removeMarginsWhenFindOnPageOperationDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetTranslationForInfoBarIfAny()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setEasyModeValue(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->misEasyModeOn:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->misEasyModeOn:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    goto :goto_0
.end method

.method public setMarginsWhenFindOnPageOperation()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "ToolBarUITranslations"

    const-string v1, "HIDEURL - setMarginsWhenFindOnPageOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v3}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setTranslationForInfoBarIfAny()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRateForInfobar:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0
.end method

.method public showToolBarUsingTopControl()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateTopControlsState(ZZZ)V

    :cond_0
    return-void
.end method

.method public showToolbarOnFullScreenMode()V
    .locals 0

    return-void
.end method

.method public unRegisterScrollOrFlingListner(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->unRegisterScrollOrFlingListner()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->unRegisterScrollOrFlingListner()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->unRegisterScrollOrFlingListner()V

    :cond_1
    return-void
.end method
