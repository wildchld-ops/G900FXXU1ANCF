.class final Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageActivity.java"

# interfaces
.implements Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmergencyFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onShowCount(I)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #setter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mContactsCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$102(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I
    invoke-static {v6}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$200(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$200(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setAddContactButtonEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$400(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$400(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)Landroid/view/MenuItem;

    move-result-object v3

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setAddContactButtonEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
