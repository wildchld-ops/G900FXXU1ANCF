.class Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;
.super Ljava/lang/Object;
.source "SendGroupDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v2, "SendDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;
    invoke-static {v3}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->access$000(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "actionCode"

    const/16 v3, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "additional"

    const-string v3, "email-multi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SelectMode"

    iget-object v3, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupType:I
    invoke-static {v3}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->access$100(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "directSendIntent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "groupSend"

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromGroupDetail"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;
    invoke-static {v3}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->access$000(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "actionCode"

    const/16 v3, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "additional"

    const-string v3, "email-phone-multi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SelectMode"

    iget-object v3, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupType:I
    invoke-static {v3}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->access$100(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "directSendIntent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "groupSend"

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromGroupDetail"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e025e -> :sswitch_0
        0x7f0e027d -> :sswitch_1
    .end sparse-switch
.end method
