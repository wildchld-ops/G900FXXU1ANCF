.class Lcom/android/keyguard/KeyguardHostView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    #setter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$202(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 4

    const/4 v0, 0x2

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget v1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    const-string v1, "hide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput p1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$402(Lcom/android/keyguard/KeyguardHostView;I)I

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_3

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    const-string v1, "show"

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 5

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v2

    if-eqz v2, :cond_3

    #calls: Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z
    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->access$600(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    :goto_0
    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$402(Lcom/android/keyguard/KeyguardHostView;I)I

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: play state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    :cond_0
    return-void
.end method
