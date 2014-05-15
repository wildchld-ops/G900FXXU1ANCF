.class public Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "AttentionForSelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static DismissDialog(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public static checkShowAttentionAgain(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    sget-boolean v1, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-nez v1, :cond_0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBackupAssistance()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableAAB()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "showCreatePhoneAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "showCreateOtherAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static doNotShowAttentionAgain(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showCreatePhoneAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showCreateOtherAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static getCheckedState(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkedState"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2

    const-string v1, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V
    .locals 5

    const-string v3, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    new-instance v2, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;

    invoke-direct {v2}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;-><init>()V

    invoke-virtual {v2, p2}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {v2, p3}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->setListener(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V

    :try_start_0
    const-string v3, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "AttentionForSelectAccountDialogFragment"

    const-string v4, "show AttentionForSelectAccountDialogFragment"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static storeCheckedState(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checkedState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030106

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v5, :cond_0

    const-string v5, "vnd.sec.contact.phone"

    iget-object v6, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v6, v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0e03a9

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v5, 0x7f080163

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0802a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getCheckedState(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const v5, 0x7f0802a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    new-instance v5, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$1;-><init>(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e023a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$3;-><init>(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$2;-><init>(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v5, 0x7f0e03aa

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    iget-object v1, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;->onAttentionDialogDetached(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method

.method public setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    return-void
.end method
