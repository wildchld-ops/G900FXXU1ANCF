.class public abstract Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;
.super Ljava/lang/Object;
.source "ExtractModeBaseUI.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeUI;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field private static final ACTIVITY_PAUSED:I = 0x1

.field private static final ACTIVITY_RESUMED:I = 0x0

.field public static final CONTEXTUAL_BUTTON_DATA:Ljava/lang/String; = "ContextButton"

.field private static final FINDTOOLBAR_HIDE_DELAY:J = 0xc8L

.field private static final MAX_TAB_COUNTER:I = 0x32

.field private static final READER_DEFAULT_FONT:I = 0x12

.field private static final SLIDE_DURATION:I = 0xc8

.field private static final ZOOMLIMIT:I = 0x5

.field private static mTabStripHeight:F


# instance fields
.field private findText:Ljava/lang/String;

.field private mContentSettings:Lorg/chromium/content/browser/ContentSettings;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

.field private mContextSearch:Landroid/widget/ImageButton;

.field private mContextSearchPosition:Landroid/widget/FrameLayout$LayoutParams;

.field private mCount:I

.field private mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

.field private mDropActive:Z

.field private mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

.field private mFixedfont:I

.field private mFont:I

.field private mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

.field private mIsFullScreen:Z

.field protected mParentActivity:Landroid/app/Activity;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mReaderMenu:Landroid/view/Menu;

.field private mReaderProgressDialog:Landroid/app/Dialog;

.field private mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

.field private mShowTranslateMode:Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;

.field private mTranslate:Landroid/view/MenuItem;

.field private mTranslateModeContainer:Landroid/widget/FrameLayout;

.field protected mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

.field private mUiHandler:Landroid/os/Handler;

.field private mZoomIn:Landroid/view/MenuItem;

.field private mZoomOut:Landroid/view/MenuItem;

.field private rendererHolder:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mDropActive:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomOut:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderMenu:Landroid/view/Menu;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->findText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iput v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFixedfont:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mIsFullScreen:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTranslate:Landroid/view/MenuItem;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mDropActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setUrlBarHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$600()F
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTabStripHeight:F

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->findText:Ljava/lang/String;

    return-object v0
.end method

.method private closeReader()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private doZoomin()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomOut:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->setDefaultFontSize(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private doZoomout()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFixedfont:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFixedfont:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomOut:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFixedfont:I

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->setDefaultFontSize(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->setDefaultFontSize(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomOut:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFixedfont:I

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method private moveToSetTranslationScreen()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/sec/android/app/sbrowser/preferences/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ":android:no_headers"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, ":android:show_fragment"

    const-class v3, Lcom/sec/android/app/sbrowser/preferences/TranslateModePreferences;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x2002

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "SBrowserMainActivityContextId"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getCurrentSBrowserMainContextId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyActivityState(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onActivityResume()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onActivityPause()V

    goto :goto_0
.end method

.method private setContentViewWidth()V
    .locals 6

    const v5, 0x7f090002

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->rendererHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->getReaderToolBarHeightDimension()I

    move-result v3

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->getReaderToolBarHeightDimension()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->rendererHolder:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setUrlBarHidden(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "Reader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarAutoHider :Reader setUrlBarHidden url_hide = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/HideUrlBarCmd;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    iput-boolean v4, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    iput-boolean v4, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    iput-boolean p1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_hidden:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    return-void
.end method


# virtual methods
.method public HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    const-string v0, "Reader"

    const-string v1, "ToolBarAutoHider : Reader HideUrlBarCmdReq sending updated params Start "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    :cond_0
    return-void
.end method

.method public OnDragEventDelegate(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public OnHoverEventDelegate(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public OnScrollBegin(Z)V
    .locals 0

    return-void
.end method

.method public OnScrollEnd(II)V
    .locals 0

    return-void
.end method

.method public OnTouchEventDelegate(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public OnUrlBarActive()V
    .locals 0

    return-void
.end method

.method public attachContentViewToRenderer()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v2, Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/ContentViewRenderView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v3, 0x7f0a012b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->rendererHolder:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->rendererHolder:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2, v3, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2, v3, v5, v1}, Lorg/chromium/content/browser/ContentViewRenderView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V

    return-void
.end method

.method public autoHideResume()V
    .locals 0

    return-void
.end method

.method public autoHideResumeSendBitmap()V
    .locals 0

    return-void
.end method

.method public cancelHidingUrlBar()V
    .locals 0

    return-void
.end method

.method public changeVisibiblityOfNewTabStub()V
    .locals 0

    return-void
.end method

.method public checkUtilityConditionsForHideUrl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createNewMultiWindowTab()V
    .locals 0

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public dismissReaderProgressDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    return-void
.end method

.method public displayReaderProgressDialog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public displayTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
    .locals 0

    return-void
.end method

.method public dp2Pixels(F)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->findText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getBottomBar()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomBarEasymode()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomBarUi()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method public getMainToolBarView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevTabCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReaderDefaultFont()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTranslateMoreButton()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTranslate:Landroid/view/MenuItem;

    return-object v0
.end method

.method public hideControlsForContextualMenuBar()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput v2, v0, v2

    const-string v1, "controlTopMargin"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$7;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public hidePopup()V
    .locals 0

    return-void
.end method

.method public hideUrlBarWithDelay(I)V
    .locals 0

    return-void
.end method

.method public inflateAndInitializeUi()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v1, 0x7f04003a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public initializeContentView(Landroid/app/Activity;ILorg/chromium/ui/WindowAndroid;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/chromium/content/browser/ContentView;->newInstance(Landroid/content/Context;ILorg/chromium/ui/WindowAndroid;I)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->setSbrTabBrige()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getSbrContentSettings()Lorg/samsung/content/sbrowser/SbrContentSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    return-void
.end method

.method public initializeReaderFont()V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFixedfont:I

    return-void
.end method

.method public initializeUI()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v6, v11}, Lorg/chromium/content/browser/ContentSettings;->setBuiltInZoomControls(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentSettings:Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v6, v10}, Lorg/chromium/content/browser/ContentSettings;->setDisplayZoomControls(Z)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setViewClickListener(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v7, 0x7f0a0129

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-interface {v6, v7, v8}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->setFindToolBar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v7, 0x7f0a012d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTranslateModeContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v7, 0x7f0a012c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6, p0}, Lorg/chromium/content/browser/ContentView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearchPosition:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isForExtractMode()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getContexualPref()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getContexualOverlayPref()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    new-instance v7, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$1;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v7, 0x7f0c0315

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setContentViewWidth()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiHandler:Landroid/os/Handler;

    new-instance v7, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$2;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const-class v6, Landroid/view/ViewConfiguration;

    const-string v7, "sHasPermanentMenuKey"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v7, 0x102002c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v10, v10, v6, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getTranslateModeUserPref()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setShowTranslateModeVisibility(Z)V

    invoke-virtual {v4, v10}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setTranslateModeUserPref(Z)V

    :cond_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initializeUI(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isFindTextToolbarShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQuickLaunchPageSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUrlBarActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUrlBookmarked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matchParent()V
    .locals 0

    return-void
.end method

.method public multiWindowOnResume()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->sendUrlForContextSearch()V

    :cond_0
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$10;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mDropActive:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isForExtractMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getContexualPref()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getContexualOverlayPref()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v1, 0x0

    const/high16 v3, 0x4254

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->dp2Pixels(F)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearchPosition:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v5, v5, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearchPosition:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->setContentViewWidth()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 18

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setContextMenuIsShown(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/chromium/content/browser/ContentView;->setContextMenuInfoToContentView(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    instance-of v15, v7, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    if-eqz v15, :cond_0

    move-object v5, v7

    check-cast v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isCustomMenu()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x1

    :cond_0
    :goto_0
    move v15, v14

    :goto_1
    return v15

    :cond_1
    sparse-switch v3, :sswitch_data_0

    const/4 v15, 0x0

    goto :goto_1

    :sswitch_0
    const/4 v14, 0x0

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->openDialPad(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isFromReadingList()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x23

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x15

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    move-object v15, v2

    check-cast v15, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v15

    const/16 v16, 0x32

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v15

    if-eqz v15, :cond_4

    const v15, 0x7f0c00e4

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v15

    if-eqz v15, :cond_5

    const v15, 0x7f0c00e7

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0c003d

    new-instance v17, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$9;

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$9;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_4
    const v15, 0x7f0c00e2

    goto :goto_3

    :cond_5
    const v15, 0x7f0c00e3

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isFromReadingList()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getCurrentSBrowserMainContextId()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    iget-object v15, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    sget-object v16, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    invoke-interface {v15, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_7
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x27

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getCurrentSBrowserMainContextId()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    iget-object v15, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    sget-object v16, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    invoke-interface {v15, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isFromReadingList()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x24

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_a
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x17

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isFromReadingList()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x25

    move/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_b
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x18

    move/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->isFromReadingList()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x26

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_c
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v15, "readerContextmenuItemUrl"

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v16, 0x19

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_7

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->saveLink(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->copyLinkText(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->copyLinkAddress(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->saveImage(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getImageForCopy()Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->copyImage(Landroid/graphics/Bitmap;)V

    :cond_d
    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v0, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->decodeImage(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_d
    iget-object v13, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->unfilteredLinkUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15, v13}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->saveToClipboard(Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->selectLastTouchText()V

    const/4 v14, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0037 -> :sswitch_d
        0x7f0a02fc -> :sswitch_2
        0x7f0a02fd -> :sswitch_3
        0x7f0a02fe -> :sswitch_4
        0x7f0a02ff -> :sswitch_7
        0x7f0a0300 -> :sswitch_9
        0x7f0a0301 -> :sswitch_8
        0x7f0a0302 -> :sswitch_e
        0x7f0a0303 -> :sswitch_0
        0x7f0a0304 -> :sswitch_a
        0x7f0a0305 -> :sswitch_b
        0x7f0a0306 -> :sswitch_5
        0x7f0a0307 -> :sswitch_6
        0x7f0a0308 -> :sswitch_c
        0x7f0a030a -> :sswitch_1
        0x7f0a030d -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11

    const v10, 0x7f0a0303

    const v9, 0x7f0a02fe

    const v7, 0x7f0a02fb

    const/4 v8, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v5, p2, Lorg/chromium/content/browser/ContentView;

    if-eqz v5, :cond_0

    move-object v1, p3

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isCustomMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemSize()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemAt(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;

    move-result-object v5

    iget-object v4, v5, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;->mLabel:Ljava/lang/String;

    invoke-interface {p1, v8, v2, v8, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isAnchor:Z

    if-nez v5, :cond_3

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSelectedText:Z

    if-nez v5, :cond_3

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-nez v5, :cond_3

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isEditable:Z

    if-eqz v5, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f0e000d

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->getContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    iget-object v5, v5, Lorg/chromium/content/browser/ContentViewCore;->mSelectionHandler:Lorg/samsung/content/sbrowser/SelectionHandler;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SelectionHandler;->clearSelectClosestWordMessageQueue()V

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    invoke-interface {p1, v7, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    invoke-interface {p1, v10, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v5, 0x7f0a0309

    iget-boolean v6, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcTelAnchor:Z

    invoke-interface {p1, v5, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcImageAnchor:Z

    invoke-interface {p1, v7, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    :cond_4
    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcTelAnchor:Z

    if-eqz v5, :cond_5

    invoke-interface {p1, v7, v8}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    invoke-interface {p1, v10, v8}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    :cond_5
    iget-object v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const v5, 0x7f0a02fd

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    const-string v5, "CscFeature_Web_DisableMenuSaveContentsInAnchorLink"

    invoke-static {v5}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    if-nez v5, :cond_7

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcImageAnchor:Z

    if-eqz v5, :cond_8

    :cond_7
    const v5, 0x7f0a02ff

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcAnchor:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-nez v5, :cond_c

    iget-object v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_9
    :goto_2
    const v5, 0x7f0a0308

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-eqz v5, :cond_a

    const v5, 0x7f0a0302

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0a0307

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    const v5, 0x7f0a0301

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_c
    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isImage:Z

    if-eqz v5, :cond_d

    iget-object v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->srcUrl:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2

    :cond_d
    iget-boolean v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->isSrcTelAnchor:Z

    if-eqz v5, :cond_9

    iget-object v5, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    const/4 v6, 0x4

    iget-object v7, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->linkUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderMenu:Landroid/view/Menu;

    const v2, 0x7f0a0346

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderMenu:Landroid/view/Menu;

    const v2, 0x7f0a0347

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomOut:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomIn:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mZoomOut:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderMenu:Landroid/view/Menu;

    const v2, 0x7f0a0341

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTranslate:Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->destroy()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    :cond_2
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v5, "DragDrop"

    const-string v6, "Unknown action type received by OnDragListener."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mDropActive:Z

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "ContextButton"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->updateContextSearchIconPosition(II)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mDropActive:Z

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v5, 0x4254

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->dp2Pixels(F)I

    move-result v1

    invoke-virtual {v2, v7, v7, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$4;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->closeReader()V

    goto :goto_1
.end method

.method public onMenuKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v6

    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->makeNightMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->invalidate()V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->makeDayMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->invalidate()V

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v4, 0x7f0c0147

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    move v4, v3

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrapBitmap()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->closeReader()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->doZoomin()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->doZoomout()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->sendUrlForContextSearch()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->moveToSetTranslationScreen()V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->prepareShareSummary()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0a033f -> :sswitch_1
        0x7f0a0341 -> :sswitch_6
        0x7f0a0342 -> :sswitch_5
        0x7f0a0345 -> :sswitch_0
        0x7f0a0346 -> :sswitch_3
        0x7f0a0347 -> :sswitch_4
        0x7f0a0348 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->notifyActivityState(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    :cond_1
    const-string v0, "READER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPause :: is Surface Ready in Reader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->isSurfaceViewReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getReaderLastUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getNativeScrollYForTest()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->setFontAndScrollPosition(ILjava/lang/String;I)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0a0342

    const v5, 0x7f0a0341

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v1, 0x7f0a033f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a0340

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsTranslationEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getTranslateModeUserPref()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getExtractValueCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->getInstance()Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getTranslateLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->isTargetLanguageAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsContextualSearchEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getContexualPref()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v4

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onRenderProcessSwap(II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "READER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume :: is Surface Ready in Reader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->isSurfaceViewReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->notifyActivityState(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mIsFullScreen:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mIsFullScreen:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTabCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onUrlBarBitmapUpdated()V
    .locals 0

    return-void
.end method

.method public registerForNotification()V
    .locals 0

    return-void
.end method

.method public reloadTabIfNecessary()V
    .locals 0

    return-void
.end method

.method public removeTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)V
    .locals 0

    return-void
.end method

.method public requestWindowFeature()V
    .locals 3

    const/high16 v2, 0x100

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public requestWindowFeature(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public resetTabStateOnUserDemand()V
    .locals 0

    return-void
.end method

.method public setDelegateControl()V
    .locals 0

    return-void
.end method

.method public setExtractMode(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setFindOnPageToolbarDisplay(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->findText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$3;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    return-void
.end method

.method public setFullScreen()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mIsFullScreen:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public setListnerOnProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mReaderProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public setReaderFont()V
    .locals 2

    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mSbrContentSettings:Lorg/samsung/content/sbrowser/SbrContentSettings;

    iget v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFont:I

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method public setSavedPageToast()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0c01dd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setShowTranslateMode(Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mShowTranslateMode:Lcom/sec/android/app/sbrowser/extractmode/showTranslateMode;

    return-void
.end method

.method public setShowTranslateModeVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTranslateModeContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTranslateModeContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStateofURL(I)V
    .locals 0

    return-void
.end method

.method public setToastForAlreadySavedImage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0c01df

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setToastForMemoryFull()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0c01e0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setToastForSavedImage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mProgressDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f0c01de

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setTopMarginForChromeView()V
    .locals 0

    return-void
.end method

.method public setUrlBarActiveFlag(Z)V
    .locals 0

    return-void
.end method

.method public showActionBar()V
    .locals 0

    return-void
.end method

.method public showControlsForContextualMenuBar()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;->queryCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mTabStripHeight:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const-string v1, "controlTopMargin"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$5;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$6;-><init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mCurrentContextualMenuBarAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public showControlsForContextualMenuBar(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showQuickLaunchView(Z)V
    .locals 0

    return-void
.end method

.method public toggleWindowHeight(Z)V
    .locals 0

    return-void
.end method

.method public updateContextSearchIconPosition(II)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    const v5, 0x7f0a012b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ltz v4, :cond_0

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    if-gt p1, v4, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    if-gt p2, v4, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x4254

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->dp2Pixels(F)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v6, v6, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContextSearch:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_0
.end method

.method public updateEasyModeLayout(I)V
    .locals 0

    return-void
.end method

.method public updateLoadProgress(II)V
    .locals 0

    return-void
.end method

.method public updateQuickAccessModeOnNativeFail()V
    .locals 0

    return-void
.end method

.method public updateUrlBarFocus(Z)V
    .locals 0

    return-void
.end method

.method public updateView(I)V
    .locals 0

    return-void
.end method
