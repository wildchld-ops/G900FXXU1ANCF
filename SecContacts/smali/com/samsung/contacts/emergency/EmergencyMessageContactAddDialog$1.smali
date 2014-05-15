.class Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;
.super Ljava/lang/Object;
.source "EmergencyMessageContactAddDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    const-string v1, "EmergencyMessageContactAddDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.emergencymessagecontactcreateactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "pick-multi-emergency-message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "maxRecipientCount"

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I
    invoke-static {v2}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->access$000(Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I
    invoke-static {v2}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->access$100(Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
