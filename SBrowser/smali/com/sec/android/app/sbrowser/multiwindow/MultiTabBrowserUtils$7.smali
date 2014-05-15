.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;
.super Landroid/os/AsyncTask;
.source "MultiTabBrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapDuringDeletion(Lcom/sec/android/app/sbrowser/common/TabData;Landroid/os/Handler;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

.field final synthetic val$data:Lcom/sec/android/app/sbrowser/common/TabData;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;Landroid/os/Handler;Lcom/sec/android/app/sbrowser/common/TabData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 19

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/TabData;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/TabData;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$data:Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/TabData;->getBitmap()[B

    move-result-object v13

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "MultiTabPerspIntroUtils"

    const-string v4, "mLoadCurrentThumbnailHandler isMultiWindow = true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getStatusBarHeight()I

    move-result v3

    sub-int/2addr v15, v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v3

    sub-int v3, v15, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntrolayoutBottomclippingHeight()I

    move-result v4

    sub-int v15, v3, v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v3, v15, :cond_4

    const/4 v11, 0x0

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v3, v4

    int-to-float v3, v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v3, v4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v11

    :cond_4
    :goto_2
    move-object v3, v2

    goto/16 :goto_0

    :cond_5
    const-string v3, "MultiTabPerspIntroUtils"

    const-string v4, "mLoadCurrentThumbnailHandler isMultiWindow = false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntrolayoutBottomclippingHeight()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    sub-int v15, v3, v4

    goto/16 :goto_1

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v14

    const-string v3, "MultiTabBrowserUtils"

    invoke-virtual {v14}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$7;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
