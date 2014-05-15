.class public Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;
.super Landroid/os/Handler;
.source "PlaceHolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressHandler"
.end annotation


# instance fields
.field progress:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v5, 0x64

    const/16 v4, 0x69

    const/16 v3, 0x64

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    if-eq v1, v3, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$200(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$200(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #getter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$200(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v0

    :cond_0
    if-lez v0, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    if-ge v1, v0, :cond_2

    :cond_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    iget v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->updateProgress(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    goto :goto_1

    :cond_4
    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    if-eq v1, v3, :cond_5

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->updateProgress(I)V

    const/16 v1, 0x6b

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->progress:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->updateProgress(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;->this$0:Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    #setter for: Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->access$402(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
