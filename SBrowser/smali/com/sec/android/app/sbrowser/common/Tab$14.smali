.class Lcom/sec/android/app/sbrowser/common/Tab$14;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->updateThumbnail(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$14;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$14;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$14;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mSbrTabBridge:Lorg/samsung/chrome/browser/SbrTabBridge;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3800(Lcom/sec/android/app/sbrowser/common/Tab;)Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$14;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrUpdateThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$14;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
