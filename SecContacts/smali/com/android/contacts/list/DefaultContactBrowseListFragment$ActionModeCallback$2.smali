.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->val$shareIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->val$shareIntent:Landroid/content/Intent;

    const v3, 0x7f0e033c

    invoke-static {v1, v2, v3}, Lcom/samsung/contacts/util/ChooserUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->finishActionMode()V

    return-void
.end method
