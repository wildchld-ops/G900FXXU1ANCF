.class Lorg/chromium/content/browser/input/ImeAdapter$1;
.super Landroid/os/Handler;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "ImeAdapter"

    const-string v2, "Unknown Message Type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$000(Lorg/chromium/content/browser/input/ImeAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$000(Lorg/chromium/content/browser/input/ImeAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z
    invoke-static {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$100(Lorg/chromium/content/browser/input/ImeAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dev.ssrm.mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    #getter for: Lorg/chromium/content/browser/input/ImeAdapter;->cfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->access$200(Lorg/chromium/content/browser/input/ImeAdapter;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "SBROWSER_DASH_MODE"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v2, 0x0

    #setter for: Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z
    invoke-static {v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->access$102(Lorg/chromium/content/browser/input/ImeAdapter;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "ImeAdapter"

    const-string v2, "KEYLAG : Setting SBROWSER_DASH_MODE to 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImeAdapter"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
