.class public Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChangeAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# instance fields
.field private mListener:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorUtils;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 0

    sput-object p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;)Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;

    return-object v0
.end method

.method public static dismissDialog(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "ChangeAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2

    const-string v1, "ChangeAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method private onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;

    invoke-interface {v0, p1}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "list_filter"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v5, v8, v9}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)V

    new-instance v3, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$1;-><init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    const-string v7, "title_res_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e00d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;

    invoke-direct {v8, p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;-><init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const/4 v6, 0x0

    const v7, 0x7f0e023a

    const-string v8, "title_res_id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_1

    const v7, 0x7f0e011a

    invoke-virtual {p0, v7}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0e023c

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e01b9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;

    invoke-direct {v8, p0, v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;-><init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v2, v0, v10, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "title_res_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "list_filter"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "ChangeAccountDialogFragment"

    invoke-virtual {p1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    new-instance v2, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v2}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, p5}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->setListener(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    const-string v3, "ChangeAccountDialogFragment"

    invoke-virtual {v2, p1, v3}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
