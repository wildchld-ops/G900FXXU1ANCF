.class Lcom/sec/android/app/sbrowser/common/InstantTab;
.super Ljava/lang/Object;
.source "InstantTab.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field private mNativeInstantTab:I

.field private mPageFinishedReceived:Z

.field private mTabToCommitOn:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/InstantTab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/InstantTab;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/InstantTab$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/InstantTab$1;-><init>(Lcom/sec/android/app/sbrowser/common/InstantTab;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;-><init>(Landroid/app/Activity;Lorg/chromium/content/browser/ContentView;Lcom/sec/android/app/sbrowser/common/Tab;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mTabToCommitOn:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mTabToCommitOn:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->nativeInit(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/InstantTab;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/InstantTab;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/InstantTab;->nativePrefetchCanceled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/common/InstantTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mPageFinishedReceived:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/InstantTab;)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mTabToCommitOn:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method private discardPrefetch()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private native nativeCommitPrefetch(I)Z
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit(Lorg/chromium/content/browser/ContentView;Lorg/chromium/content/browser/ContentView;)I
.end method

.method private native nativePrefetchCanceled(I)Z
.end method

.method private native nativePrefetchUrl(ILjava/lang/String;I)Z
.end method


# virtual methods
.method public acquireInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object v0
.end method

.method public commitPrefetch()Z
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/InstantTab;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/InstantTab;->nativeCommitPrefetch(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mTabToCommitOn:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/Tab;->importPrefetchTab(Lcom/sec/android/app/sbrowser/common/InstantTab;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/InstantTab;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    :cond_1
    return-void
.end method

.method didReceivePageFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mPageFinishedReceived:Z

    return v0
.end method

.method getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object v0
.end method

.method public getPrefetchedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method public prefetchUrl(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mNativeInstantTab:I

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/InstantTab;->nativePrefetchUrl(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/InstantTab;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method
