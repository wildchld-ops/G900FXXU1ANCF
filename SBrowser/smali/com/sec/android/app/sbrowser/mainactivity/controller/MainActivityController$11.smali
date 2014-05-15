.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->shareUrl(Lorg/chromium/content/browser/ContentView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

.field final synthetic val$localChromeView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v4, v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v4, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
