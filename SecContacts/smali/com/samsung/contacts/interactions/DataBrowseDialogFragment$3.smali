.class Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$3;
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

    iput-object p1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$3;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$3;->this$0:Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;->onCancelChosen()V

    return-void
.end method
