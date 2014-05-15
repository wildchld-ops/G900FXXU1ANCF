.class Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;
.super Landroid/os/AsyncTask;
.source "TabListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/TabListWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreTabList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field finput:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v1, ""

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$000(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$000(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$300(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mInstanceIndex:I
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$200(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tab_wrapper_list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->finput:Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/ObjectInputStream;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->finput:Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->finput:Ljava/io/FileInputStream;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->finput:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$000(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    if-nez v7, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    :goto_0
    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v11

    :cond_4
    const/4 v3, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v7

    invoke-virtual {v8, v9, v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addNewTabFromRestore(IZ)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v7

    invoke-virtual {v8, v9, v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addNewTabFromRestore(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_8
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TabListWrapper restoreTabList array is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_b
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    goto/16 :goto_0

    :catch_3
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->addTabFromContentListAdapter()V

    :cond_d
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v7
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->finput:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->finput:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
