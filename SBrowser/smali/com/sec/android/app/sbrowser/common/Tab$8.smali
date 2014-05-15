.class Lcom/sec/android/app/sbrowser/common/Tab$8;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrSoftBitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->createSbrSoftBitmapListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$8;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnUpdateRecaptureSoftBitmapListener(Landroid/graphics/Bitmap;Z)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$8$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/Tab$8$2;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$8;Landroid/graphics/Bitmap;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab$8$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public OnUpdateSoftBitmapListener(Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$8$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$8$1;-><init>(Lcom/sec/android/app/sbrowser/common/Tab$8;Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab$8$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
