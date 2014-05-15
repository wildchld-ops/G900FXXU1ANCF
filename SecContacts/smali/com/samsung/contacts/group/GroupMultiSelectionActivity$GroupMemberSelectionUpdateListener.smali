.class final Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;
.super Ljava/lang/Object;
.source "GroupMultiSelectionActivity.java"

# interfaces
.implements Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMemberSelectionUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onSelectedAction(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ModifiedIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "GroupInfo"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    #getter for: Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->access$300(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->finish()V

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    #setter for: Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->access$602(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    #setter for: Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mTotalCount:I
    invoke-static {v0, p2}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->access$702(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->updateSelectionMenu()V

    return-void
.end method
