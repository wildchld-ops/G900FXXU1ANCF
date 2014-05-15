.class Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
.super Landroid/os/Handler;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V
    invoke-static {v2, v1, v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1100(Lcom/samsung/mms/util/SaveRestoreOperation;II)V

    return-void

    :pswitch_0
    const v1, 0x7f0c03a8

    const v0, 0x7f0c03a7

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0c0183

    const v0, 0x7f0c03a5

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0c0183

    const v0, 0x7f0c03b4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
