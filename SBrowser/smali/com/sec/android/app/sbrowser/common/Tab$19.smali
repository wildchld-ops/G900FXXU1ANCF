.class Lcom/sec/android/app/sbrowser/common/Tab$19;
.super Landroid/os/Handler;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$19;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolBarAutoHider : Sending bitmap from didStopLoading "

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$19;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1400(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->startCapturingToolBarBitmap(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$19;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mIsPageStarted:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$7802(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
