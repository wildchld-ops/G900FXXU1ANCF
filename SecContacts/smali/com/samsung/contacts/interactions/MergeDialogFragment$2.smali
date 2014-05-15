.class Lcom/samsung/contacts/interactions/MergeDialogFragment$2;
.super Ljava/lang/Object;
.source "MergeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/MergeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/MergeDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/MergeDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/MergeDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "MergeDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/MergeDialogFragment;

    invoke-virtual {v3}, Lcom/samsung/contacts/interactions/MergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/MergeDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/MergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/MergeDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/MergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/MergeDialogFragment$2;->this$0:Lcom/samsung/contacts/interactions/MergeDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/MergeDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MergeWithGoogleDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e025a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
