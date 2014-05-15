.class Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "BusinesscardListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field mIsShowDone:Z

.field mMenuDelete:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mIsShowDone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->updateSelectionMenu()V

    return-void
.end method

.method private updateSelectionMenu()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e027b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$600(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isMultiSelectModeSearchInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->refreshSelectAllState()V
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mIsShowDone:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$800(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$900(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    if-ne v6, v2, :cond_1

    move v2, v3

    :goto_3
    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->updateSelectAllState(Z)V
    invoke-static {v5, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_3

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    :goto_4
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_4
.end method


# virtual methods
.method public deselectAll()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1600(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1900(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$2000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f080304

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v8, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0390

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    const v4, 0x7f0e0391

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;

    invoke-direct {v5, p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return v8

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e038f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onContactSelected(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1300(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f110010

    const v3, 0x7f080304

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mIsShowDone:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f0e0163

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f08016b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$602(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #setter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z
    invoke-static {v2, v5}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1102(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)Z

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->showSelectAllHeader(Z)V
    invoke-static {v2, v5}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1200(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v2, v5}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setMultiSelectEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    const/4 v3, 0x0

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->updateSelectAllState(Z)V
    invoke-static {v2, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setMultiSelectionMode(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->clearCustomSearchResult()V

    return v5

    :cond_0
    invoke-virtual {v1, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setMultiSelectionMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->deselectAll()V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->showSelectAllHeader(Z)V
    invoke-static {v1, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1200(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->clearCustomSearchResult()V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #setter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1302(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #setter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
    invoke-static {v1, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1402(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #setter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z
    invoke-static {v1, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1102(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)Z

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAll()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1600(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    :goto_2
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1800(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method public setIsShowDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->mIsShowDone:Z

    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1300(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1300(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
