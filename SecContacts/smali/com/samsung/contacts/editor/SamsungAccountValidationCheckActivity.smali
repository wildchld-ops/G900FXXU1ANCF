.class public Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SamsungAccountValidationCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mIsNewInterface:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

.field private mSetContactSyncDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->writeValidationSamsungAccountToPreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V

    return-void
.end method

.method private checkContactsSyncable()V
    .locals 11

    const/4 v10, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v8, "com.osp.app.signin"

    invoke-virtual {v1, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    aget-object v0, v2, v10

    if-nez v0, :cond_0

    const-string v8, "SamsungAccountValidationCheckActivity"

    const-string v9, "Samsung account doesn\'t exist"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    move-object v3, v6

    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v3, v4

    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const-string v9, "com.android.contacts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "com.android.contacts"

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    const-string v8, "com.android.contacts"

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->showSetContactSyncPopup(Landroid/accounts/Account;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v8, "SamsungAccountValidationCheckActivity"

    const-string v9, "Samsung account doesn\'t support contact sync"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    goto :goto_1
.end method

.method private clearValidationAccountInPreferernece()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keySamungAccountValidation"

    const-string v2, "noneValidSamsungAccount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private finishActivityWithResult(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldShowInputMethod"

    const-string v2, "android.intent.action.INSERT"

    const-string v3, "action"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finish()V

    return-void
.end method

.method private getVersionOfSamsungAccount()I
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.osp.app.signin"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v4, "SamsungAccountValidationCheckActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Samsung account version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v4, "SamsungAccountValidationCheckActivity"

    const-string v5, "No Samsungaccount application"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isVaildAccount(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "noneValidSamsungAccount"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v4, v2

    if-gtz v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->clearValidationAccountInPreferernece()V

    goto :goto_0

    :cond_2
    aget-object v0, v2, v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->clearValidationAccountInPreferernece()V

    goto :goto_0
.end method

.method private showSetContactSyncPopup(Landroid/accounts/Account;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e03a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e03a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$4;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$3;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$2;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private takeErrorMsg(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_message"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungAccountValidationCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error_code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SamsungAccountValidationCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private writeValidationSamsungAccountToPreference()V
    .locals 5

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "keySamungAccountValidation"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method isSupportAidlOnly()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->getVersionOfSamsungAccount()I

    move-result v0

    const v1, 0x30d40

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const v4, 0x7f0e03a3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Get result of validation request"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Validation request has succeed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->writeValidationSamsungAccountToPreference()V

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Validation request has canceled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v10}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_4

    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Validation request has failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mIsNewInterface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->takeErrorMsg(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getSamsungAccountsWithDataSet()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    new-instance v6, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$5;

    invoke-direct {v6, p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$5;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1
    invoke-direct {p0, v10}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "No validation result"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->isSupportAidlOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mIsNewInterface:Z

    return-void
.end method

.method protected onStart()V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "keySamungAccountValidation"

    const-string v6, "noneValidSamsungAccount"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-direct {p0, v3}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->isVaildAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mIsNewInterface:Z

    if-eqz v4, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.msc.action.samsungaccount.REQUEST_CHECKLIST_VALIDATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "client_id"

    const-string v5, "50g862n7m1"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "client_secret"

    const-string v5, "7C02D4DC43694AC81B0B7737D74DA8AB"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "validation_result_only"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    iput-object v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "client_id"

    const-string v5, "50g862n7m1"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "client_secret"

    const-string v5, "7C02D4DC43694AC81B0B7737D74DA8AB"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "mypackage"

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "OSP_VER"

    const-string v5, "OSP_02"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "MODE"

    const-string v5, "VALIDATION_CHECK"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "SamsungAccountValidationCheckActivity"

    const-string v5, "Send Broadcast to check validation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const v5, 0x7f0e03a2

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$1;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method
