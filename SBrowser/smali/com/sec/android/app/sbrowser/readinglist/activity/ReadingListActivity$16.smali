.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->val$mode:Landroid/view/ActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSearchFlag:Z
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const-string v8, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    sget-object v7, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "is_deleted"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z
    invoke-static {v7, v9}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$902(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v8, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    sget-object v7, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "is_deleted"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z
    invoke-static {v7, v9}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$902(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v8, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
