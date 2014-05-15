.class Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$2;
.super Ljava/lang/Object;
.source "PlaceHolderController.java"

# interfaces
.implements Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->createPlaceHolderSoftBitmapListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$2;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlaceHolderSoftBitmapListener(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "Software Path Bitmap is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$2;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$000(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->storeBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$2;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setPlaceHolderSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;)V

    return-void
.end method
