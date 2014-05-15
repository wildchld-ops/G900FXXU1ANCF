.class public Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;
.super Landroid/os/AsyncTask;
.source "SBrowserBookmarkProviderTaskManager.java"


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
.field public bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

.field private mContentValues:Landroid/content/ContentValues;

.field mContext:Landroid/content/Context;

.field private object:Ljava/lang/Object;

.field private operation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->operation:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->operation:I

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->operation:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->operation:I

    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, "false"

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->operation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->insertIntoBookmarkTable(Landroid/content/ContentValues;)V

    const-string v1, "true"

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->updateBookmarkTable(Landroid/content/ContentValues;)I

    const-string v1, "true"

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->MarkAsDeleteIntoBookmarkTable(Landroid/content/ContentValues;)V

    const-string v1, "true"

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->object:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->object:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->object:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->deleteFolderAndChildBookmarks(J)V

    const-string v1, "true"

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->updateBookmarkOnSignin()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderTaskManager;->bkmUtility:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->updateSavedPageOnSignin()V

    const-string v1, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "false"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
