.class Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;

    #getter for: Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->access$2500(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;

    #getter for: Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->access$2600(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;

    const/4 v2, 0x0

    #setter for: Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->access$2602(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;

    #getter for: Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->access$2700(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
