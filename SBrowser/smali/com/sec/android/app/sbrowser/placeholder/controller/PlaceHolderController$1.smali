.class Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;
.super Ljava/lang/Object;
.source "PlaceHolderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->refreshBitMap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iput p2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->val$tabId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$000(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iget v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->val$tabId:I

    #calls: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->loadFullScreenBitmapForID(I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$100(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$200(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #calls: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->scaleImageIfRequired(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$300(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$200(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsBackFromTabManager(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$000(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->storeBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doNotify()V

    :cond_1
    return-void
.end method
