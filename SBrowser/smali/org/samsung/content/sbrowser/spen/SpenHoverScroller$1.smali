.class Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;
.super Landroid/os/Handler;
.source "SpenHoverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$400()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    #getter for: Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollMode:I
    invoke-static {v1}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$000(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    #calls: Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doHoverScrollMove()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$100(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    #calls: Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doHoverScrollByPage()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$200(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;->this$0:Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doHoverScrollMoveByStep(II)V
    invoke-static {v0, v1, v2}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->access$300(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
