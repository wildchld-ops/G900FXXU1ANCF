.class Lcom/sec/android/app/sbrowser/common/Tab$1$1;
.super Ljava/lang/Thread;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

.field final synthetic val$canUpdateHistoryThumbnail:Z

.field final synthetic val$mostVisitedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$shouldUpdateThumbnail:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab$1;Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$shouldUpdateThumbnail:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$canUpdateHistoryThumbnail:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$shouldUpdateThumbnail:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$canUpdateHistoryThumbnail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->updateHistoryThumbnail(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$600(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->updateBookmarksThumbnail(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$700(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$1$1;->val$mostVisitedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnail(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
