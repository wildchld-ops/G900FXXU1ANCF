.class public Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;
.super Ljava/lang/Object;
.source "InteractionRecentActivity.java"

# interfaces
.implements Lcom/samsung/dialer/interaction/OnRecentListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/interaction/InteractionRecentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InteractionRecentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;


# direct methods
.method protected constructor <init>(Lcom/samsung/dialer/interaction/InteractionRecentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 0

    return-void
.end method

.method public onInteractionDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onInteractionSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    #setter for: Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->access$002(Lcom/samsung/dialer/interaction/InteractionRecentActivity;I)I

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    #setter for: Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mTotalCount:I
    invoke-static {v0, p2}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->access$102(Lcom/samsung/dialer/interaction/InteractionRecentActivity;I)I

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->updateSelectionMenu()V

    return-void
.end method

.method public onMultiInfoSelectionAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->finish()V

    return-void
.end method

.method public onSingleSelectionAction(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method
