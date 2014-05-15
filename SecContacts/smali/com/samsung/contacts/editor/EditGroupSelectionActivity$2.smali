.class Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;
.super Ljava/lang/Object;
.source "EditGroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mIsInsert:Z
    invoke-static {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->access$000(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mRawContactId:J
    invoke-static {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->access$100(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rawContactId"

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mRawContactId:J
    invoke-static {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->access$100(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "selectedGroupId"

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;
    invoke-static {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->access$200(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->getSelecedGroupId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "selectedGroupTitle"

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;
    invoke-static {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->access$200(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->getSelectedGroupTitle()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;
    invoke-static {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->access$200(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->updateGroup()V

    goto :goto_0
.end method
