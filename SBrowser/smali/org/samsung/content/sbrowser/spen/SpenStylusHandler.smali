.class public Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;
.super Ljava/lang/Object;
.source "SpenStylusHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mOnStylusProxyListener:Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

.field private static mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private static sInstance:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;


# instance fields
.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->sInstance:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    const-string v0, "SPenStylusHandler"

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Init(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 1

    iput-object p1, p0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public static getInstance()Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->sInstance:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;-><init>()V

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->sInstance:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->sInstance:Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;

    return-object v0
.end method

.method private setStylusButtonEventListener()V
    .locals 2

    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->TAG:Ljava/lang/String;

    const-string v1, "setOnAudioFocusChangeListener()"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-direct {v0, v1}, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mOnStylusProxyListener:Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

    return-void
.end method


# virtual methods
.method public registerStylusButtonEventListener(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->Init(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->setStylusButtonEventListener()V

    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mOnStylusProxyListener:Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->TAG:Ljava/lang/String;

    const-string v1, "addOnStylusButtonEventListener successfully added"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterStylusButtonEventListener()V
    .locals 2

    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    sget-object v1, Lorg/samsung/content/sbrowser/spen/SpenStylusHandler;->mOnStylusProxyListener:Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    return-void
.end method
