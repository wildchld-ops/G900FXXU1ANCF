.class Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$1;
.super Landroid/os/Handler;
.source "CallDetailAllCallsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$1;->this$0:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

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
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$1;->this$0:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$1;->this$0:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->startRequestProcessing()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
