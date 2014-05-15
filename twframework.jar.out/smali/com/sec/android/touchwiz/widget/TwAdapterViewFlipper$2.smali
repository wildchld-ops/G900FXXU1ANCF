.class Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;
.super Landroid/os/Handler;
.source "TwAdapterViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->access$300(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->showNext()V

    :cond_0
    return-void
.end method
