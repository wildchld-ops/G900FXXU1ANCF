.class public Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetAsDefaultDialogFragment"
.end annotation


# static fields
.field static IsHadChanges:Z

.field static IsSaveSucceeded:Z

.field static mContactLookupUri:Landroid/net/Uri;

.field static mSaveMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;ZIZLandroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sput-boolean p1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsHadChanges:Z

    sput p2, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mSaveMode:I

    sput-boolean p3, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsSaveSucceeded:Z

    sput-object p4, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mContactLookupUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetAsDefault"

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->safeDialogShow(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hideSoftInput(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    sget-boolean v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsHadChanges:Z

    sget v2, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mSaveMode:I

    sget-boolean v3, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsSaveSucceeded:Z

    sget-object v4, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mContactLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveAction(ZIZLandroid/net/Uri;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    if-eqz p1, :cond_0

    const-string v1, "hadChanges"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsHadChanges:Z

    const-string v1, "shouldSaveMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mSaveMode:I

    const-string v1, "saveSucceeded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsSaveSucceeded:Z

    const-string v1, "contactLookupUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mContactLookupUri:Landroid/net/Uri;

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e033a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0340

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "hadChanges"

    sget-boolean v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsHadChanges:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "shouldSaveMode"

    sget v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mSaveMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "saveSucceeded"

    sget-boolean v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsSaveSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "contactLookupUri"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mContactLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
