.class Lcom/sec/android/app/sbrowser/common/Tab$10;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnailBeforeTabMgrSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;

.field final synthetic val$saveBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->val$saveBitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->val$saveBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->val$saveBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->val$saveBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->saveFullScreenBitmap(ILandroid/graphics/Bitmap;Z)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6000(Lcom/sec/android/app/sbrowser/common/Tab;ILandroid/graphics/Bitmap;Z)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$10;->val$saveBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
