.class public Lcom/samsung/contacts/sim/SIMManagementDialogFragment;
.super Landroid/app/DialogFragment;
.source "SIMManagementDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# static fields
.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private isAirplaneMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v0, ""

    sput-object v0, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->mExternalSdCardMounted:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/sim/SIMManagementDialogFragment;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method private handleImportRequest(I)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0e0168

    sget-object v7, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    :goto_1
    invoke-static {v6, p1, v4}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;-><init>()V

    const-string v1, "SIMManagementDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->dismiss()V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    new-instance v2, Lcom/samsung/contacts/sim/SIMManagementDialogFragment$1;

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f03010c

    invoke-direct {v2, p0, v8, v9, v4}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment$1;-><init>(Lcom/samsung/contacts/sim/SIMManagementDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    iput-boolean v6, p0, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->isAirplaneMode:Z

    iget-boolean v6, p0, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->isAirplaneMode:Z

    if-nez v6, :cond_2

    const v6, 0x7f0e03f3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "sec_container_1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x7f0e03f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    const v6, 0x7f0e03f5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/samsung/contacts/sim/SIMManagementDialogFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment$2;-><init>(Lcom/samsung/contacts/sim/SIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0e03fb

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6, v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v8, Lcom/samsung/contacts/sim/SIMManagementDialogFragment$3;

    invoke-direct {v8, p0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment$3;-><init>(Lcom/samsung/contacts/sim/SIMManagementDialogFragment;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v1
.end method
