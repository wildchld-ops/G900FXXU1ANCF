.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;
.super Lorg/samsung/content/sbrowser/SbrContentViewClient;
.source "ReadLaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->observeSavePageFileNameReceived(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

.field final synthetic val$isSavePage:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->val$isSavePage:Z

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V
    .locals 18

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "observeSavePageFileNameReceived - cachedBitmap received"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsReadingListFaceDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/sec/android/dmc/MVFDEngine;->FDInit()I

    invoke-static {v1, v3, v2}, Lcom/sec/android/dmc/MVFDEngine;->FDRun(Landroid/graphics/Bitmap;II)I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_0

    invoke-static {v12}, Lcom/sec/android/dmc/MVFDEngine;->getFaceROI(I)Lcom/sec/android/dmc/MVFDEngine$FaceROI;

    move-result-object v7

    iget v9, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Top:I

    iget v8, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Face detected at rect : ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Left:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Top:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Right:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v7, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->Bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/dmc/MVFDEngine;->FDRelease()I

    if-gtz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "Face not detected"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_1
    if-lt v3, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setImageStyle(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setThumbnailCachedBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    if-lt v3, v2, :cond_4

    int-to-float v15, v3

    const/high16 v16, 0x43b4

    div-float v13, v15, v16

    const/high16 v15, 0x42f4

    mul-float/2addr v15, v13

    float-to-int v5, v15

    :goto_3
    add-int v15, v9, v8

    div-int/lit8 v4, v15, 0x2

    div-int/lit8 v11, v5, 0x2

    sub-int v15, v4, v11

    if-gez v15, :cond_5

    if-le v5, v2, :cond_3

    move v5, v2

    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_0
    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_4
    int-to-float v15, v3

    const/high16 v16, 0x4314

    div-float v13, v15, v16

    const/high16 v15, 0x4334

    mul-float/2addr v15, v13

    float-to-int v5, v15

    goto :goto_3

    :cond_5
    add-int v15, v4, v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    sub-int v15, v2, v5

    if-ltz v15, :cond_6

    const/4 v15, 0x0

    sub-int v16, v2, v5

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_6
    if-le v5, v2, :cond_7

    move v5, v2

    :cond_7
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_8
    const/4 v15, 0x0

    sub-int v16, v4, v11

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_1

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OnReceiveBitmapFromCache : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setImageStyle(I)V

    goto/16 :goto_2
.end method

.method public scrapPageSavedFileName(Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$302(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$600(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$600(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrDestroyWebContents(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$600(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrTabBridgeDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$602(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/samsung/chrome/browser/SbrTabBridge;)Lorg/samsung/chrome/browser/SbrTabBridge;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$700(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/WebContentsObserverAndroid;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$700(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/WebContentsObserverAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebContentsObserverAndroid;->detachFromWebContents()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserverAndroid;
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$702(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Lorg/chromium/content/browser/WebContentsObserverAndroid;)Lorg/chromium/content/browser/WebContentsObserverAndroid;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrapPageSavedFileName :: Recieved Filename :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "text/html"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->isHTMLPage(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$800(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    const-string v0, "text/html"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->LOGTAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dismissing the progressbar - Saving Not Aloowed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$900(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->showToast(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;->dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V

    :goto_0
    return-void

    :cond_4
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->getActualReadingListDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mEncryptedDirectryPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mIsFileNameReceived:Z
    invoke-static {v0, v5}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1202(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->val$isSavePage:Z

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->setFavicon(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadingListModel:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mCurTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->mReadLaterUi:Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$3;->val$isSavePage:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->executeReadingListDataTask(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;Z)V

    goto :goto_0
.end method
