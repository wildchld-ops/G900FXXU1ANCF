.class Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$1;
.super Landroid/os/Handler;
.source "TiltScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$1;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->doContinuousTiltScroll(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->access$000(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
