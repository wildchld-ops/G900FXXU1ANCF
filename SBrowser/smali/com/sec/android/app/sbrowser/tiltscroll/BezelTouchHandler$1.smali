.class Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;
.super Landroid/os/Handler;
.source "BezelTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    #getter for: Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$000(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelTouchState:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$102(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    #getter for: Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$200(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    #getter for: Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$200(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    #getter for: Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownX:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$300(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    #getter for: Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$400(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;->onBezelTouchStarted(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BEZEL_TOUCH] mOnBezelTouchListener = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
