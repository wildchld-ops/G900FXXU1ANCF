.class Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;
.super Landroid/os/AsyncTask;
.source "SBrowserImportBookmarkReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->RestoreBookmarks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 34

    const-string v31, "SBrowserImportBookmarkReceiver"

    const-string v32, "Runnable : start."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/16 v22, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v29, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$path:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/bookmark.xml"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$path:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/bookmark.xml"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    const-string v31, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    move-object/from16 v30, v29

    :goto_0
    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v6, v0, :cond_d

    packed-switch v6, :pswitch_data_0

    :try_start_3
    const-string v31, "SBrowserImportBookmarkReceiver"

    const-string v32, "RestoreBookmarks : Error! default case"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    move-object/from16 v29, v30

    :goto_1
    :try_start_4
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    move-object/from16 v30, v29

    goto :goto_0

    :pswitch_0
    move-object/from16 v29, v30

    goto :goto_1

    :pswitch_1
    move-object/from16 v29, v30

    goto :goto_1

    :pswitch_2
    :try_start_5
    const-string v31, "bookmark"

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v31, 0x0

    :try_start_6
    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v14

    goto :goto_1

    :cond_1
    :try_start_7
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v26, 0x1

    move-object/from16 v29, v30

    goto :goto_1

    :pswitch_3
    const-string v31, "bookmark"

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    add-int/lit8 v27, v27, 0x1

    const/16 v28, 0x0

    const-string v31, "URL"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_5

    const-string v31, "URL"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_2
    :goto_2
    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_3

    const-string v31, "SURL"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3

    const-string v31, "SURL"

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    sget-object v32, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    if-eqz v21, :cond_4

    if-eqz v15, :cond_4

    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v15, 0x0

    const/16 v29, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v31, "url"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    const-string v31, "url"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto :goto_2

    :cond_6
    const/16 v26, 0x0

    move-object/from16 v29, v30

    goto/16 :goto_1

    :pswitch_4
    if-eqz v26, :cond_0

    const-string v31, "isFolder"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v13, v0, :cond_8

    const-string v31, "FOLDER"

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v15, 0x1

    :cond_7
    :goto_3
    move-object/from16 v29, v30

    goto/16 :goto_1

    :cond_8
    if-nez v13, :cond_7

    const-string v31, "FOLDER"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v15, 0x0

    goto :goto_3

    :cond_9
    const-string v31, "parent_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v31, 0x0

    cmp-long v31, v18, v31

    if-nez v31, :cond_a

    const-string v31, "SBrowserImportBookmarkReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RestoreBookmarks : parent_id is not found = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v31, "PARENT"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v29, v30

    goto/16 :goto_1

    :cond_b
    const-string v31, "URL"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    const-string v31, "URL"

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v30

    goto/16 :goto_1

    :cond_c
    const-string v31, "title"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const-string v31, "TITLE"

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v29, v30

    goto/16 :goto_1

    :cond_d
    move-object/from16 v29, v30

    :goto_4
    :try_start_8
    const-string v31, "SBrowserImportBookmarkReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RestoreBookmarks : total count = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v27, :cond_e

    const/16 v22, 0x1

    const/4 v5, 0x3

    const-string v31, "SBrowserImportBookmarkReceiver"

    const-string v32, "RestoreBookmarks : There\'s no bookmarks to restore"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object v8, v9

    :cond_f
    :goto_5
    new-instance v3, Landroid/content/Intent;

    const-string v31, "android.intent.action.RESPONSE_RESTORE_BROWSER"

    move-object/from16 v0, v31

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v31, "RESULT"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "ERR_CODE"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "REQ_SIZE"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "REBOOT"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "SOURCE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$source:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v31, 0x0

    return-object v31

    :catch_0
    move-exception v4

    :goto_6
    const/16 v22, 0x1

    const/4 v5, 0x1

    :try_start_9
    const-string v31, "SBrowserImportBookmarkReceiver"

    const-string v32, "RestoreBookmarks : DB Input exception"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v4

    move-object v8, v9

    :goto_7
    const/16 v22, 0x1

    const/4 v5, 0x2

    :try_start_a
    const-string v31, "SBrowserImportBookmarkReceiver"

    const-string v32, "RestoreBookmarks : file exception"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    goto/16 :goto_5

    :catchall_0
    move-exception v31

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/common/SBrowserImportBookmarkReceiver;->mFolders:Ljava/util/HashMap;

    :cond_10
    throw v31

    :catchall_1
    move-exception v31

    move-object v8, v9

    goto :goto_8

    :catchall_2
    move-exception v31

    move-object/from16 v29, v30

    move-object v8, v9

    goto :goto_8

    :catch_2
    move-exception v4

    goto :goto_7

    :catch_3
    move-exception v4

    move-object/from16 v29, v30

    goto/16 :goto_6

    :cond_11
    move-object v8, v9

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
