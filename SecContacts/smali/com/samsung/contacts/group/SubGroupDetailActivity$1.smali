.class Lcom/samsung/contacts/group/SubGroupDetailActivity$1;
.super Ljava/lang/Object;
.source "SubGroupDetailActivity.java"

# interfaces
.implements Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/SubGroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/SubGroupDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewGroupAction(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mInteractionMode:Z
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$000(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SelectMode"

    iget-object v2, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/contacts/util/GroupUtils;->parseGroupType(Lcom/samsung/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    #getter for: Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "GoogleSubGroup"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;->this$0:Lcom/samsung/contacts/group/SubGroupDetailActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
