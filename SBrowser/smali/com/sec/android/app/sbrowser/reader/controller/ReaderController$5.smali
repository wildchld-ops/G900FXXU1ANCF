.class Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$5;
.super Lorg/chromium/content/browser/WebContentsObserverAndroid;
.source "ReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->initializeWebContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$5;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/WebContentsObserverAndroid;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method


# virtual methods
.method public didStartLoading(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$5;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mUi:Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$100(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;->updateTopControls()V

    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ReaderController"

    const-string v1, "did stop loading called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$5;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->displayReaderView(Ljava/lang/String;)V

    return-void
.end method
