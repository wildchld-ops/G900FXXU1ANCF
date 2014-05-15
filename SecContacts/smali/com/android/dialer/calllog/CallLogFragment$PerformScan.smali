.class public Lcom/android/dialer/calllog/CallLogFragment$PerformScan;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isWhichOp:I

.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 21

    const/16 v17, 0x0

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->isWhichOp:I

    const-string v17, "CallLogFragment"

    const-string v18, "[PerformScan] Call Log delete start ....."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->isWhichOp:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogAdapter;->getLimitedItemId()J

    move-result-wide v14

    const-string v17, "CallLogFragment"

    const-string v18, "[PerformScan] Call Log delete for ALL_DELETE"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/samsung/dialer/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/dialer/impl/ViewByImpl;->getWhichButton()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/dialer/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(IJ)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    const-string v17, "CallLogFragment"

    const-string v18, "[PerformScan] Call Log delete end ....."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    return-object v17

    :cond_0
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "_id in ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static/range {v18 .. v18}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/calllog/CallLogAdapter;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/dialer/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/database/Cursor;

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/samsung/dialer/calllog/GroupCount;

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/dialer/calllog/GroupCount;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/dialer/calllog/GroupCount;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/dialer/calllog/GroupCount;->getGroupCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/dialer/calllog/GroupCount;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/dialer/calllog/GroupCount;->getGroupIDs()[I

    move-result-object v2

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_3

    aget v8, v2, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v17, "CallLogFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dataId= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/lit8 v17, v7, 0x64

    if-nez v17, :cond_1

    const/16 v17, 0x29

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/samsung/dialer/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v17, "_id in ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x2c

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    rem-int/lit8 v17, v7, 0x64

    if-nez v17, :cond_4

    const/16 v17, 0x29

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/samsung/dialer/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v17, "_id in ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v17, 0x2c

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/16 v17, 0x29

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v17, "CallLogFragment"

    const-string v18, "[PerformScan] Call Log delete for REST Item"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/samsung/dialer/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const-string v17, "CallLogFragment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2400(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2700(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2700(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2700(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e02f0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2400(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2700(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
