.class Lcom/sec/android/app/sbrowser/common/Tab$15$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab$15;->updateCategory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab$15;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResult(Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;)V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCategory:Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;
    invoke-static {v6, p1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6402(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;)Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v7, p1, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->category:Ljava/lang/String;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6502(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "URL"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6500(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6500(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CATEGORY"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCategoryString:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6500(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSmartDB:Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6200(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6300(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;->insertClusteredHistoryDetails(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    const-string v6, "CATEGORY"

    const-string v7, "Unknown"

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
