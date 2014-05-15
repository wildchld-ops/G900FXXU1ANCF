.class Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;->doInBackground([Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

.field final synthetic val$mBitmapArray:Landroid/util/SparseArray;

.field final synthetic val$tabId:I

.field final synthetic val$tabView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;Landroid/util/SparseArray;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$mBitmapArray:Landroid/util/SparseArray;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabId:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabView:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$mBitmapArray:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$mBitmapArray:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$mBitmapArray:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/LoadThumbnail$1;->val$tabId:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method
