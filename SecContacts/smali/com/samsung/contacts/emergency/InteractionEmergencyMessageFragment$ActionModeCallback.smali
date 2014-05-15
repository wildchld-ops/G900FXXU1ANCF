.class Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V

    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 5

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$100(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1900(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v2, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    new-instance v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$2;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v5}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v0, v1}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080304
        :pswitch_0
    .end packed-switch
.end method

.method public onContactSelected(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1500(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->updateSelectionMenu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$900(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110007

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    const v3, 0x7f080304

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    #setter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$802(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020105

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0e030c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1000(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$1;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v2, v5}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setMultiSelectEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #calls: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->addSelectAllHeader()V
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1100(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->setMultiSelectionMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->updateSelectionMenu()V

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setMultiSelectEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->setMultiSelectionMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->deselectAll()V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #calls: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->removeSelectAllHeader()V
    invoke-static {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1200(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #setter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1302(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #setter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionModeCallback:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;
    invoke-static {v1, v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1402(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;)Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAddContactLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$900(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public selectAll()V
    .locals 5

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$100(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1600(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1700(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$400(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e027b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$500(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v6, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$600(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    if-ne v2, v6, :cond_0

    move v2, v3

    :goto_0
    #calls: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->updateSelectAllState(Z)V
    invoke-static {v5, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$700(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;Z)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$800(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1
.end method
