.class Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;
.super Ljava/lang/Object;
.source "SmartMotionListener.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->init()V
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

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRListener motionEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSbrContentViewCore or getSmartScrollHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getSmartMotion()I

    move-result v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckStartMotionListener:Z
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$1000(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->setGyroSumDy(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->show()Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setInitVSync()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->acquireDVFS()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalY:I
    invoke-static {v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)I

    move-result v2

    #calls: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->handleSmartMotionScrolling(II)V
    invoke-static {v1, v5, v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$300(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;II)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setInitVSync()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->acquireDVFS()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalY:I
    invoke-static {v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)I

    move-result v3

    #calls: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->handleSmartMotionScrolling(II)V
    invoke-static {v1, v2, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$300(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;II)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$402(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;I)I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->sendDelayWakeRelease()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$602(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$702(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->showGuideView()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$402(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;I)I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->sendDelayWakeRelease()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckFaceDetected:Z
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$802(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$602(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z
    invoke-static {v1, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$702(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->hide()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    const/4 v2, 0x0

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    invoke-static {v1, v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->access$902(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6a -> :sswitch_4
    .end sparse-switch
.end method
