.class Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$1;
.super Ljava/lang/Object;
.source "PrintSec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->startPrinting()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->PrintBegin()V

    return-void
.end method
