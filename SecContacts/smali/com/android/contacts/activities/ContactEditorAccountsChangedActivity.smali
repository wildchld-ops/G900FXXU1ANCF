.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;
.implements Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;


# static fields
.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# instance fields
.field private mChangeAccountDialogFragment:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

.field private mHasEmail:Z

.field private mHasPhoto:Z

.field private mHasRingtone:Z

.field private mIsICEGroup:Z

.field private mNewAccountAdded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mNewAccountAdded:Z

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    return-void
.end method

.method private saveAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2

    const-string v0, "com.osp.app.signin"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getEditorUtils()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method public onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSim1Account(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimFull(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->showSimFullToast(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSim2Account(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimFull(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->showSimFullToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->checkShowAttentionAgain(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0, p1, p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mNewAccountAdded:Z

    sget-object v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttentionDialogDetached(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    new-instance v0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;-><init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "photomode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ringtone_uri"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_ice_group"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "emailmode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->DismissDialog(Landroid/app/FragmentManager;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->dismissDialog(Landroid/app/FragmentManager;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isTwoGSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isEmailAvailable(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v6

    sget-object v3, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mNewAccountAdded:Z

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    sget-object v3, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    goto :goto_0

    :cond_3
    if-gez v7, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have a negative number of accounts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ne v7, v2, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e023a

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e023b

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    goto :goto_1
.end method
