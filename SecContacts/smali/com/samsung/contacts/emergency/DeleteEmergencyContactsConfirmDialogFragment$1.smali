.class Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteEmergencyContactsConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    #calls: Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->removeEmergencyMessages()V
    invoke-static {v0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->access$000(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->access$100(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->access$100(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;->onDoneSelected()V

    :cond_0
    return-void
.end method
