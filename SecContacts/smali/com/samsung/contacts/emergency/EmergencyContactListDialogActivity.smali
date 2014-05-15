.class public Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "EmergencyContactListDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onAttachFragment(Landroid/app/Fragment;)V

    instance-of v1, p1, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    new-instance v1, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity$1;-><init>(Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->setListener(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->show(Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method
