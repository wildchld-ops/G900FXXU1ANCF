.class Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;
.super Ljava/lang/Object;
.source "SBrowserTabSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToFileData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

.field final synthetic val$instanceId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;->val$instanceId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v24, 0x3

    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v16

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v12

    add-int v4, v9, v12

    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v14

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v18

    add-int v17, v14, v18

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v23, 0x0

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    :goto_0
    move/from16 v0, v23

    if-ge v0, v5, :cond_0

    move/from16 v0, v23

    invoke-interface {v15, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_0
    const/16 v23, 0x0

    invoke-interface/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v19

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v2

    if-eqz v7, :cond_8

    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const/4 v6, 0x0

    :cond_2
    :goto_3
    const/16 v21, 0x0

    :try_start_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "saveListToFileData TAB_SAVED_STATE called"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v22, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Landroid/app/Activity;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;->val$instanceId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "tab_state"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v2, :cond_3

    :try_start_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_3
    if-eqz v22, :cond_7

    :try_start_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "saveListToFileData dataOutputStream closed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v21, 0x0

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception :: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v8

    :goto_5
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "saveListToFileData Exception"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_2

    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception :: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v24

    :goto_7
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    const/4 v6, 0x0

    :cond_5
    throw v24

    :catch_3
    move-exception v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception :: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_4
    move-exception v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception :: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v22

    goto/16 :goto_4

    :catch_5
    move-exception v8

    :goto_9
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception :: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v21, :cond_4

    :try_start_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "saveListToFileData dataOutputStream closed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    const/16 v21, 0x0

    goto/16 :goto_4

    :catch_6
    move-exception v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception :: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catchall_1
    move-exception v24

    :goto_a
    if-eqz v21, :cond_6

    :try_start_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v25

    const-string v26, "saveListToFileData dataOutputStream closed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    const/16 v21, 0x0

    :cond_6
    :goto_b
    throw v24

    :catch_7
    move-exception v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception :: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_2
    move-exception v24

    move-object/from16 v21, v22

    goto :goto_a

    :catch_8
    move-exception v8

    move-object/from16 v21, v22

    goto/16 :goto_9

    :catchall_3
    move-exception v24

    move-object v6, v7

    goto/16 :goto_7

    :catch_9
    move-exception v8

    move-object v6, v7

    goto/16 :goto_5

    :cond_7
    move-object/from16 v21, v22

    goto/16 :goto_4

    :cond_8
    move-object v6, v7

    goto/16 :goto_3
.end method
