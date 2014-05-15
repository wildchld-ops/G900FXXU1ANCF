.class public Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;
.super Landroid/os/AsyncTask;
.source "SBrowserContentProviderTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private contentValues:Landroid/content/ContentValues;

.field cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

.field obj:Ljava/lang/Object;

.field private operation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->operation:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    iput p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->operation:I

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->operation:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->obj:Ljava/lang/Object;

    iput p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->operation:I

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v1, "false"

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->operation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->insertIntoTabTable(Landroid/content/ContentValues;)V

    const-string v1, "true"

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateTabTable(Landroid/content/ContentValues;)I

    const-string v1, "true"

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->deleteTabTable(Landroid/content/ContentValues;)I

    const-string v1, "true"

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDetailsFromTabTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    const-string v1, "true"

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->signedOutTabTable()I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->removeDesktopBookmarks()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->clearSyncState()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->cancelTabSyncTimer()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->insertDataIntoInternetSyncDb()V

    const-string v1, "true"

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateTabTableOnActiveChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateTabTable(Landroid/content/ContentValues;)I

    :cond_1
    const-string v1, "true"

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->startingAfterForceClose()I

    const-string v1, "true"

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->removePrevInstanceTabs(I)I

    const-string v1, "true"

    goto :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateInternetSyncDb(Landroid/content/ContentValues;)V

    const-string v1, "true"

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateAllInternetSyncDb(Landroid/content/ContentValues;)V

    const-string v1, "true"

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->insertDataIntoInternetSyncDb()V

    const-string v1, "true"

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->deleteDataIntoInternetSyncDb()V

    const-string v1, "true"

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->enableInternetSync()V

    const-string v1, "true"

    goto/16 :goto_0

    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->cpUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDeviceName(Ljava/lang/String;)V

    const-string v1, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "false"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
