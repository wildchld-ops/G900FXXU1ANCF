.class Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageFragment.java"

# interfaces
.implements Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$2;->this$1:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$2;->this$1:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$2;->this$1:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    iget-object v0, v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$1300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
