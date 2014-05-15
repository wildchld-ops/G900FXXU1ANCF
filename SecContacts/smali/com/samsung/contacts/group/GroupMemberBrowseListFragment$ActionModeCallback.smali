.class Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;-><init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    return-void
.end method

.method private updateSelectionMenu()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e027b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isMultiSelectModeSearchInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->refreshSelectAllState()V
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$800(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$900(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    if-ne v6, v2, :cond_1

    move v2, v3

    :goto_1
    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->updateSelectAllState(Z)V
    invoke-static {v5, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method public deselectAll(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isDefaultIce(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onRemoveMemberRequested(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080304
        :pswitch_0
    .end packed-switch
.end method

.method public onContactSelected(IJ)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isDefaultIce(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1800(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isActionModeAvailable()Z
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1200(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110010

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f03005f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f08016c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback$1;-><init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f08016b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #setter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z
    invoke-static {v2, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1302(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)Z

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSelectAllHeader(Z)V
    invoke-static {v2, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setMultiSelectionMode(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->clearCustomSearchResult()V

    move v2, v4

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setMultiSelectionMode(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->deselectAll(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSelectAllHeader(Z)V
    invoke-static {v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setAddMemberButtonVisibility(Z)V
    invoke-static {v1, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->clearCustomSearchResult()V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #setter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1802(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #setter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v1, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1902(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #setter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z
    invoke-static {v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1302(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)Z

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #setter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z
    invoke-static {v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1602(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)Z

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f080304

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v4, 0x7f0e0163

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v3

    :cond_2
    const v4, 0x7f0e0041

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public selectAll()V
    .locals 5

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2200(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2300(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isDefaultIce(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    return-void
.end method
