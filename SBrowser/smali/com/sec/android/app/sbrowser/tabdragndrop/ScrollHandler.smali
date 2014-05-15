.class Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;
.super Landroid/os/Handler;
.source "ScrollHandler.java"


# instance fields
.field final START_SCROLL_DOWN:I

.field final START_SCROLL_UP:I

.field final STOP_SCROLL:I

.field volatile downScrollEnabled:Z

.field downscrollHandler:Landroid/os/Handler;

.field mScrollView:Landroid/widget/ScrollView;

.field volatile upScrollEnabled:Z

.field upscrollHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->START_SCROLL_UP:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->START_SCROLL_DOWN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->STOP_SCROLL:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upScrollEnabled:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$1;-><init>(Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upscrollHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler$2;-><init>(Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downscrollHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downScrollEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->mScrollView:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upScrollEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->startUpScroll()V

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downScrollEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->startDownScroll()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upScrollEnabled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downScrollEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downscrollHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upscrollHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDownScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downScrollEnabled:Z

    return v0
.end method

.method public isUpScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upScrollEnabled:Z

    return v0
.end method

.method public startDownScroll()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->downscrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startUpScroll()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->upscrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
