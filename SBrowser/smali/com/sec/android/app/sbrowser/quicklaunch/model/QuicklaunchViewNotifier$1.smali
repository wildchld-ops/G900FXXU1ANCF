.class final Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier$1;
.super Landroid/os/Handler;
.source "QuicklaunchViewNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    #calls: Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->mostvisitedDeleted()V
    invoke-static {}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuicklaunchViewNotifier;->access$000()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
