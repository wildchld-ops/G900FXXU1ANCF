.class Lorg/chromium/content/browser/LongPressDetector$LongPressHandler;
.super Landroid/os/Handler;
.source "LongPressDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/LongPressDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/LongPressDetector;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/LongPressDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/LongPressDetector$LongPressHandler;->this$0:Lorg/chromium/content/browser/LongPressDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector$LongPressHandler;->this$0:Lorg/chromium/content/browser/LongPressDetector;

    #calls: Lorg/chromium/content/browser/LongPressDetector;->dispatchLongPress()V
    invoke-static {v0}, Lorg/chromium/content/browser/LongPressDetector;->access$000(Lorg/chromium/content/browser/LongPressDetector;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
