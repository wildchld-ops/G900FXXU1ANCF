.class Lcom/sec/android/app/sbrowser/common/Tab$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->canUpdateHistoryThumbnail()Z
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$200(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->shouldUpdateThumbnail()Z
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$300(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    move-object v3, v0

    new-instance v7, Lcom/sec/android/app/sbrowser/common/Tab$1$1;

    invoke-direct {v7, p0, v3, v4, v1}, Lcom/sec/android/app/sbrowser/common/Tab$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$1;Landroid/graphics/Bitmap;ZZ)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->start()V

    :goto_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$400(Lcom/sec/android/app/sbrowser/common/Tab;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SOFTWAREBITMAP_RECAPTURE_ENABLE:Z

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSoftBmpMaxHeight:I
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->access$500(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->ReCaptureSoftBitmap(IZ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v7, v8, v2}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->access$100(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method
