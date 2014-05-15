.class Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;
.super Ljava/lang/Object;
.source "ToolbarSwipeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->addBitmapToSDcard(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;ILandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;->val$tabId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;->val$tabId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->addToSdCard(ILandroid/graphics/Bitmap;)Ljava/lang/String;

    return-void
.end method
