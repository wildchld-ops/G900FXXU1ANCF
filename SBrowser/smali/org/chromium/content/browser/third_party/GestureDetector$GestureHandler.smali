.class Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/third_party/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/third_party/GestureDetector;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/third_party/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/chromium/content/browser/third_party/GestureDetector;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #getter for: Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;
    invoke-static {v0}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$100(Lorg/chromium/content/browser/third_party/GestureDetector;)Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #getter for: Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$000(Lorg/chromium/content/browser/third_party/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #calls: Lorg/chromium/content/browser/third_party/GestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$200(Lorg/chromium/content/browser/third_party/GestureDetector;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #getter for: Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$300(Lorg/chromium/content/browser/third_party/GestureDetector;)Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #getter for: Lorg/chromium/content/browser/third_party/GestureDetector;->mStillDown:Z
    invoke-static {v0}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$400(Lorg/chromium/content/browser/third_party/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #getter for: Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$300(Lorg/chromium/content/browser/third_party/GestureDetector;)Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;->this$0:Lorg/chromium/content/browser/third_party/GestureDetector;

    #getter for: Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lorg/chromium/content/browser/third_party/GestureDetector;->access$000(Lorg/chromium/content/browser/third_party/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
