.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;
.super Landroid/os/AsyncTask;
.source "MultiTabBrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadByteDuringDeletion(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/sbrowser/common/TabData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->val$tabId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sec/android/app/sbrowser/common/TabData;
    .locals 13

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Instance"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mInstanceIndex:I
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->val$tabId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_7

    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v5, :cond_6

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/sec/android/app/sbrowser/common/TabData;

    move-object v2, v0

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v4, 0x0

    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v8, 0x0

    :cond_2
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :goto_4
    :try_start_6
    const-string v10, "MultiTabBrowserUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    const/4 v8, 0x0

    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v8, :cond_4

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    const/4 v8, 0x0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v4, 0x0

    :cond_5
    :goto_7
    throw v10

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v3

    goto :goto_5

    :catch_4
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v8, v9

    goto :goto_6

    :catchall_2
    move-exception v10

    move-object v4, v5

    move-object v8, v9

    goto :goto_6

    :catch_5
    move-exception v3

    move-object v8, v9

    goto :goto_4

    :catch_6
    move-exception v3

    move-object v4, v5

    move-object v8, v9

    goto :goto_4

    :cond_6
    move-object v4, v5

    goto :goto_1

    :cond_7
    move-object v8, v9

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->doInBackground([Ljava/lang/Void;)Lcom/sec/android/app/sbrowser/common/TabData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/sbrowser/common/TabData;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->isActivtyDestroying()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->cancel(Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$6;->onPostExecute(Lcom/sec/android/app/sbrowser/common/TabData;)V

    return-void
.end method
