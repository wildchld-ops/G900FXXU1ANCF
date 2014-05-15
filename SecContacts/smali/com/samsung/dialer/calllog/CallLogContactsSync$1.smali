.class Lcom/samsung/dialer/calllog/CallLogContactsSync$1;
.super Landroid/os/Handler;
.source "CallLogContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/CallLogContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/CallLogContactsSync;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$1;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

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
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$1;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallLogNotify:Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$000(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;->CallLogNotifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$1;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #calls: Lcom/samsung/dialer/calllog/CallLogContactsSync;->startRequestProcessing()V
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$100(Lcom/samsung/dialer/calllog/CallLogContactsSync;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$1;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->stopRequestProcessing()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
