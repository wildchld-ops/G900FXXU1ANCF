.class Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity$1;
.super Ljava/lang/Object;
.source "EmergencyContactListDialogActivity.java"

# interfaces
.implements Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;->onAttachFragment(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;->finish()V

    :cond_0
    return-void
.end method
