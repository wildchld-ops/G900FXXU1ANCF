.class public Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;
.super Landroid/app/DialogFragment;
.source "MergeWithSamsungDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;
    }
.end annotation


# static fields
.field public static final IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "isPhoneAccountAvailable"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->createAccountSelectionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mergeWithSamsung(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->showResultToast(Ljava/lang/String;)V

    return-void
.end method

.method private createAccountSelectionDialog()V
    .locals 8

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getSamsungAccountsWithDataSet()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0, v4}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mergeWithSamsung(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->showResultToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-le v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;-><init>(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V

    const v6, 0x7f0e0355

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment;->show(Landroid/app/FragmentManager;Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V

    iget-object v4, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4, v1}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->launchSamsungAccountPrompt(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0
.end method

.method private launchSamsungAccountPrompt(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private mergeWithSamsung(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type = \'vnd.sec.contact.phone\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0358

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "content://com.android.contacts/account_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v7, 0x1

    :goto_3
    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    if-nez v7, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0359

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0357

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e035a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showResultToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance v2, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V

    new-instance v1, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e025b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0356

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
