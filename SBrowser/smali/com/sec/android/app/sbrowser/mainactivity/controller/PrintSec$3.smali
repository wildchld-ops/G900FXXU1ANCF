.class Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;
.super Ljava/lang/Object;
.source "PrintSec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printBitmapReceived(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

.field final synthetic val$isBitmapSaved:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;->val$isBitmapSaved:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;->val$isBitmapSaved:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->savePrintFile(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec$3;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->capturePrintBitmap()V

    return-void
.end method
