.class Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v0, v1}, Lcom/samsung/contacts/group/AddMemberDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onAddMemberRequested()V

    goto :goto_0
.end method
