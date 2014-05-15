.class Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$4;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->sendPrintIntent()V

    return-void
.end method
