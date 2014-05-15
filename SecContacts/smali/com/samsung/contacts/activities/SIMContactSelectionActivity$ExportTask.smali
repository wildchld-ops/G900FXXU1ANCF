.class public Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;
.super Lcom/android/contacts/common/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/samsung/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0, p2}, Lcom/android/contacts/common/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    iput-object p2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iput-object p3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$100(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_1

    iput v12, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getEnableCount()I

    move-result v2

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "vnd.sec.contact.sim"

    iget-object v10, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v10}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v10

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v12}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getEnableCount(I)I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v9, v9, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    :cond_2
    const-string v9, "vnd.sec.contact.sim2"

    iget-object v10, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v10}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v10

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v11}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getEnableCount(I)I

    move-result v2

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-lez v2, :cond_1

    iget v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v9, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ExportAllNumberToSIM"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getDBNumberCount(J)I

    move-result v5

    move v3, v5

    if-nez v5, :cond_4

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1, v6, v12}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->copyToSim(JIZ)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v11, :cond_0

    add-int/lit8 v2, v2, -0x1

    iget v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    :cond_4
    :goto_1
    if-lez v3, :cond_0

    if-lez v2, :cond_0

    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    sub-int v10, v5, v3

    invoke-virtual {v9, v0, v1, v6, v10}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->copyAllNumberToSim(JII)I

    move-result v4

    if-lez v4, :cond_0

    iget v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v4

    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v9, v0, v1, v6, v12}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->copyToSim(JIZ)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v11, :cond_0

    iget v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->doInBackground(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .locals 10

    const v9, 0x7f0e03f9

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_3

    const-string v4, "SIMContactSelectionActivity"

    const-string v7, "progress null"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    if-ne v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v8, 0x7f0e03fc

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v7, v9}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v8, 0x7f0e03f6

    invoke-virtual {v4, v7, v8, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;
    invoke-static {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v7

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;
    invoke-static {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDelete()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDelete(Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "SIMContactSelectionActivity"

    const-string v7, "progress.get null"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v4, "SIMContactSelectionActivity"

    const-string v7, "Error ExportTask"

    invoke-static {v4, v7, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v8, 0x7f0e03fd

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v7, v9}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f000b

    iget v8, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_7
    move v4, v6

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPostExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0e0066

    invoke-virtual {p1, v3}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v3, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask$1;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    move-object v0, p1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPreExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method
