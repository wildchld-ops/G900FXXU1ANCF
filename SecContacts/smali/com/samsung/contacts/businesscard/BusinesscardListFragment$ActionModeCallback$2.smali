.class Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "BusinesscardListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;->this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;->this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;->this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;Z)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
