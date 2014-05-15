.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$5;
.super Lorg/chromium/content/browser/WebContentsObserverAndroid;
.source "ExtracterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->initializeWebContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$5;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/WebContentsObserverAndroid;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method


# virtual methods
.method public didStopLoading(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ExtractModeController"

    const-string v1, "did stop loading called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$5;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->displayReaderView(Ljava/lang/String;)V

    return-void
.end method
