.class Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;
.super Landroid/os/Handler;
.source "SmartFaceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

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
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #calls: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->doSmartScroll()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$700(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->doSmartScrollStop()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->show()V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$800(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$908(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    const/4 v1, 0x0

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$902(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mGuideAniCount:I
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->hide()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    const/4 v1, 0x0

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$602(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->show()V

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mProgressStatus:I
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$800(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->resumeSmartScroll()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$2;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->startSmartScroll()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
