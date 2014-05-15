.class public final Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectSamsungAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static sListener:Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3

    sget-object v0, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->sListener:Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->sListener:Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;ILandroid/os/Bundle;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "title_res_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "list_filter"

    sget-object v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SAMSUNG:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "extra_args"

    if-nez p3, :cond_0

    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object p1, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->sListener:Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;

    new-instance v2, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;

    invoke-direct {v2}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v3, "SelectSamsungAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "SelectSamsungAccountDialogFragment"

    const-string v4, "IllegalStateException occurs."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    sget-object v0, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->sListener:Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->sListener:Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    new-instance v3, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
