.class public Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;
.super Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.source "SBrowserTabletCVHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delayTimerActive:Z

.field private mCurrentContentView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;->delayTimerActive:Z

    return-void
.end method

.method private postControllerChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;->removeAllViews()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/SBrowserTabletCVHolder;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setSurfaceDestroying(Z)V
    .locals 0

    return-void
.end method
