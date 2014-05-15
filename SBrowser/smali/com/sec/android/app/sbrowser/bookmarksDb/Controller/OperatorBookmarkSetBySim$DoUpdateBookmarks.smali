.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;
.super Ljava/lang/Thread;
.source "OperatorBookmarkSetBySim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoUpdateBookmarks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private getOpBookmarks()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v7

    const-string v8, "Settings.Browser."

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v7

    const-string v8, "Bookmark"

    invoke-virtual {v7, v2, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentNetworkName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v9

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    const-string v11, "NetworkName"

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "default"

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v9

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    const-string v11, "NetworkName"

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v8

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "BookmarkName"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v8

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "URL"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v8

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "Editable"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    invoke-direct {v7, v8, v5, v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v3
.end method

.method private updateOperatorBookmark()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v24

    const-string v25, "Browser.pref_opbookmark_id"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    new-instance v24, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    const-string v26, "yes"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mRes:Landroid/content/ContentResolver;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/ContentResolver;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$000()Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->getOpBookmarks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-gt v13, v0, :cond_2

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "title"

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "url"

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->editable:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "no"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    const-string v24, "editable"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mRes:Landroid/content/ContentResolver;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/ContentResolver;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$000()Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v24, "OperatorBookmarkSetBySim"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "there is no bookmarks : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const-string v24, "editable"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "DEVICE_ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "DEVICE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v24

    const-string v25, "Settings.Browser."

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v24

    const-string v25, "eManual"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v24

    const-string v25, "URL"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0c02da

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v24, "title"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "url"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "editable"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "DEVICE_ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "DEVICE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mRes:Landroid/content/ContentResolver;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/ContentResolver;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$000()Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-gt v14, v0, :cond_4

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "title"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "editable"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "DEVICE_ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "DEVICE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mRes:Landroid/content/ContentResolver;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/ContentResolver;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->access$000()Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->updateOperatorBookmark()V

    return-void
.end method
