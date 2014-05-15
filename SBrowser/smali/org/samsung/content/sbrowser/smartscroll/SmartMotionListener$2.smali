.class Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;
.super Landroid/os/Handler;
.source "SmartMotionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$000()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #calls: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->doSmartMotionScroll()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setWakeLock(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->hide()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1202(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->hide()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1202(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->hide()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$902(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->startSmartScroll()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setWakeLock(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
