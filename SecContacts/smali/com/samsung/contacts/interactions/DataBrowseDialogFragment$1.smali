.class Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;
.super Ljava/lang/Object;
.source "DataBrowseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mChecked:Z
    invoke-static {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$000(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$100(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v2, v2, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$100(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v2, v2, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$100(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$200(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mChecked:Z
    invoke-static {v4}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$000(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->access$300(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;->onDataChosen(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V

    return-void
.end method
