.class Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore$1;
.super Ljava/lang/Object;
.source "TimedSemaphore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore$1;->this$0:Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore$1;->this$0:Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->endOfPeriod()V

    return-void
.end method
