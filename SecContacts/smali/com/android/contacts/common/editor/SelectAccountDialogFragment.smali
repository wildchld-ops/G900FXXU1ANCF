.class public final Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

.field private mFilter:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

.field public mImportPath:Ljava/lang/String;

.field private mTitleRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/util/AccountsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v3, :cond_3

    const-string v3, "ImportExportDialogFragment"

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SelectSimDialogFragment"

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "importPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setImportPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, v2

    check-cast v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "importPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setImportPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

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

    new-instance v2, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v3, "ImportExportDialogFragment"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SelectSimDialogFragment"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    :cond_1
    const-string v3, "SelectAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getImportPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "list_filter"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    iput-object v4, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mFilter:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    const-string v4, "title_res_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mTitleRes:I

    new-instance v4, Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mFilter:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    iput-object v4, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    new-instance v2, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)V

    iget v4, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mTitleRes:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$2;-><init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v3
.end method

.method public setImportPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mImportPath:Ljava/lang/String;

    return-void
.end method
