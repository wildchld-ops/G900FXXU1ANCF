.class Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;
.super Landroid/os/AsyncTask;
.source "Updator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/updator/Updator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/updator/Updator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/updator/Updator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/updator/Updator;Lcom/sec/android/app/sbrowser/updator/Updator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;-><init>(Lcom/sec/android/app/sbrowser/updator/Updator;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->checkdate()Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$100(Lcom/sec/android/app/sbrowser/updator/Updator;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->writedate()V
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$200(Lcom/sec/android/app/sbrowser/updator/Updator;)V

    :try_start_0
    const-string v6, "Sbrowser_updator"

    const-string v7, "start update check"

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "OMAP_SS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->readModelCMCC()Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$300()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v6, "SAMSUNG-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #getter for: Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$400(Lcom/sec/android/app/sbrowser/updator/Updator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.sbrowser"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    const-string v4, "http://hub.samsungapps.com/product/appCheck.as?"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "appInfo=com.sec.android.app.sbrowser@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&deviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&mcc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->getMCC()Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$500(Lcom/sec/android/app/sbrowser/updator/Updator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&mnc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->getMNC()Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$600(Lcom/sec/android/app/sbrowser/updator/Updator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&csc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/updator/Updator;->getCSC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&openApi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->isPD()Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$700(Lcom/sec/android/app/sbrowser/updator/Updator;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&pd=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v3, 0x0

    const-string v6, "Sbrowser_updator"

    const-string v7, "================================================="

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Sbrowser_updator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Update request] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Sbrowser_updator"

    const-string v7, "================================================="

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #calls: Lcom/sec/android/app/sbrowser/updator/Updator;->checkUpdate(Ljava/net/URL;)Z
    invoke-static {v6, v5}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$800(Lcom/sec/android/app/sbrowser/updator/Updator;Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v6, "Sbrowser_updator"

    const-string v7, "No update~~~~~"

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&pd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v6, "Sbrowser_updator"

    const-string v7, "Update needed!!!!!"

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    const/4 v7, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/updator/Updator;->mUpdateNeeded:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$902(Lcom/sec/android/app/sbrowser/updator/Updator;Z)Z

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v6, "Sbrowser_updator"

    const-string v7, "Fail Upload"

    invoke-static {v6, v7, v0}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    throw v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #getter for: Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$1000(Lcom/sec/android/app/sbrowser/updator/Updator;)Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$1002(Lcom/sec/android/app/sbrowser/updator/Updator;Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;)Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #getter for: Lcom/sec/android/app/sbrowser/updator/Updator;->mUiListener:Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$1100(Lcom/sec/android/app/sbrowser/updator/Updator;)Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->this$0:Lcom/sec/android/app/sbrowser/updator/Updator;

    #getter for: Lcom/sec/android/app/sbrowser/updator/Updator;->mUpdateNeeded:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/updator/Updator;->access$900(Lcom/sec/android/app/sbrowser/updator/Updator;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;->onResult(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
