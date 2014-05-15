.class Lcom/samsung/dialer/dialpad/ExploreByTouchListener$2;
.super Landroid/os/Handler;
.source "ExploreByTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/ExploreByTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/ExploreByTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$2;->this$0:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTalkbackHandler, pressing..... :   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    invoke-virtual {v0, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$2;->this$0:Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    #setter for: Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mLongPressed:Z
    invoke-static {v1, v4}, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->access$102(Lcom/samsung/dialer/dialpad/ExploreByTouchListener;Z)Z

    :cond_0
    return-void
.end method
