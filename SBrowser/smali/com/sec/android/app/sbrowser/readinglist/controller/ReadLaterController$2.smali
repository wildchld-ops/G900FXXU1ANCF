.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;
.super Ljava/util/TimerTask;
.source "ReadLaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->runDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
