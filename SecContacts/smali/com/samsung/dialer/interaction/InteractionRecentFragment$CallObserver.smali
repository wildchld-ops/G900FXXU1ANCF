.class Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;
.super Landroid/database/ContentObserver;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/interaction/InteractionRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "InteractionRecentFragment"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #getter for: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$100(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #getter for: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$100(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #calls: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateAllCheckState()V
    invoke-static {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$200(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    #calls: Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateAllCheckState()V
    invoke-static {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->access$200(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V

    goto :goto_0
.end method
