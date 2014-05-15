.class Lorg/samsung/content/sbrowser/SelectionZoomer$1;
.super Landroid/os/Handler;
.source "SelectionZoomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SelectionZoomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SelectionZoomer;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SelectionZoomer;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer$1;->this$0:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "WebMagnifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer$1;->this$0:Lorg/samsung/content/sbrowser/SelectionZoomer;

    #calls: Lorg/samsung/content/sbrowser/SelectionZoomer;->moveInternal()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->access$000(Lorg/samsung/content/sbrowser/SelectionZoomer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
