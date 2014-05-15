.class public Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
.super Landroid/widget/LinearLayout;
.source "InfoBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;,
        Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;,
        Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;,
        Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "InfoBarContainer"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDestroyed:Z

.field private mFingerCheck:Z

.field private mFingerInformDialog:Landroid/app/AlertDialog;

.field private mFingerPrintFeatureEnabled:Z

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private final mInfoBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoBarsOnTop:Z

.field private final mInfoBarsToHide:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoBarsToShow:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimatingInfoBar:Z

.field private mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

.field private mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mViewClippedToBounds:Landroid/view/View;

.field private mWebLogibSettingsDialog:Landroid/app/AlertDialog;

.field private nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/content/browser/ContentView;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsOnTop:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerInformDialog:Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mWebLogibSettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceTabDragAndDropEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->hasRestorableInfoBarData()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getRestoredInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    new-instance v3, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;)V

    invoke-virtual {v2, v3}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->setSbrInfoBarCreationClient(Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;)V

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContentView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setOrientation(I)V

    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setGravity(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerPrintFeatureEnabled:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-void

    :cond_0
    new-instance v2, Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    new-instance v3, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;)V

    invoke-direct {v2, p2, v3}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;-><init>(Landroid/view/View;Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    invoke-virtual {p2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentViewCore()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->init(I)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mViewClippedToBounds:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerInformDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->broadcast(ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private addInfoBarToViewHierarchy(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Z)Landroid/view/View;
    .locals 4

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getScrollOrFlingListner()Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getScrollOrFlingListner()Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->setInforBarView(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method private addToTabView()V
    .locals 5

    const/4 v4, -0x2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v3, :cond_0

    const/16 v0, 0x50

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/content/browser/ContentView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, p0, v2}, Lorg/chromium/content/browser/ContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private broadcast(ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "infoBarId"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getInfobarId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    return-void
.end method

.method private isOwnedByInstantTab()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processPendingInfoBars()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeAndFadeNextInfoBar()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->showAndAnimateNextInfoBar()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    goto :goto_0
.end method

.method private removeAndFadeNextInfoBar()V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-boolean v11, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v11, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_0
    sget-boolean v11, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v11, v10}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getContent(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    new-instance v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;

    invoke-direct {v2, p0, v5, v4}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/view/View;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    const/4 v11, -0x1

    if-eq v6, v11, :cond_2

    if-nez v5, :cond_5

    :cond_2
    const-string v11, "InfoBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Trying to fade infobar ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") with index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_3
    move v9, v10

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "translationY"

    new-array v12, v9, [F

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v10

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const/4 v3, 0x0

    :goto_2
    if-gt v3, v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-boolean v11, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_6
    new-array v11, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v11, v10

    invoke-static {v8, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v9, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$2;

    invoke-direct {v9, p0, v0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$2;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/animation/AnimatorSet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method

.method private showAndAnimateNextInfoBar()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v5, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    sget-boolean v5, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->isSamsungTypeInfobar()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v2, v9}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBarToViewHierarchy(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$3;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f0400b5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a029d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c01b8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c01b4

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c01b5

    new-instance v7, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$7;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$7;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c01b6

    new-instance v7, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c01b7

    new-instance v7, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$5;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$5;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;

    invoke-direct {v6, p0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$4;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0a029e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->updateWebLoginStatus()V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerPrintFeatureEnabled:Z

    if-ne v5, v9, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerCheck:Z

    if-ne v5, v9, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v6, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateWebLoginStatus()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSettingsContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSettingsContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerCheck:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mFingerCheck:Z

    goto :goto_0
.end method


# virtual methods
.method public addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InfoBarContainer"

    const-string v1, "Trying to add an info bar that has already been added."

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setInfoBarContainer(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setSbrInfoBarContainer(Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->isOwnedByInstantTab()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrInfoBarContainer;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public destroyForDragAndDrop()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeAllViews()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setInfoBarContainer(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public dismissAutoLogins()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dismissAutoLogins(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    instance-of v5, v4, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;

    if-eqz v5, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_1

    #calls: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->loginSucceeded(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->access$1300(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    #calls: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->loginFailed()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->access$1400(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->setButtonsEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getInfoBarCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getInfoBars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSbrInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-object v0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method public hasBeenDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    return v0
.end method

.method public instantCommited(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/Tab;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
            ">;)V"
        }
    .end annotation

    sget-boolean v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    sget-boolean v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->hasBeenDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->isNavigationExpire(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->broadcast(ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V

    :cond_4
    return-void
.end method

.method public onContentViewChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addToTabView()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->isKeyboardShowing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->isNavigationExpire(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getScrollOrFlingListner()Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getScrollOrFlingListner()Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->clearInfoBarView()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "InfoBarContainer"

    const-string v1, "Trying to remove an info bar that is not in this container."

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToShow:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->isOwnedByInstantTab()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mInfoBarsToHide:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V

    :cond_5
    return-void
.end method

.method public restorePreviousInfoBars(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/infobar/WebAlert;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mIsAnimatingInfoBar:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V

    :cond_1
    return-void
.end method
