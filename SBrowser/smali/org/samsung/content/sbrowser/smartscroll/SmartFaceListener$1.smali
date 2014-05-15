.class Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;
.super Ljava/lang/Object;
.source "SmartFaceListener.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->init()V
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

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setListener this:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " service_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_1
    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mSbrContentViewCore or getSmartScrollHandler is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p1, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    iget v1, p1, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    iget v3, p1, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    iget v2, p1, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setListener deltaY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deltaX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setListener processStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " guideDirction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #calls: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->checkSmartScrollStatus(II)Z
    invoke-static {v4, v3, v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$200(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mCheckEventCount:I
    invoke-static {v4, v7}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$302(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;I)I

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #calls: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->checkSmartScrollDirection(II)V
    invoke-static {v4, v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$400(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;II)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    #getter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$600(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;->hide()V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$1;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    const/4 v5, 0x0

    #setter for: Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->mSmartGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;
    invoke-static {v4, v5}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->access$602(Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;)Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener$SmartGuideView;

    goto/16 :goto_0
.end method
