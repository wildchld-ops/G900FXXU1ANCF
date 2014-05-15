.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showDesktopView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isNTP()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUseDesktopUserAgent()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2, v3}, Lorg/chromium/content/browser/ContentView;->setUseDesktopUserAgent(ZZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
