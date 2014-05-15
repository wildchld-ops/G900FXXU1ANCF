.class Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;
.super Landroid/os/Handler;
.source "PrintSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "PrintSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    iget v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mState:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->setState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$2;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->mProgress:I
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->access$202(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;I)I

    :cond_0
    return-void
.end method
