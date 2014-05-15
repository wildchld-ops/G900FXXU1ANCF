.class final Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;
.super Landroid/os/Handler;
.source "MakeSim2DBService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/sim/MakeSim2DBService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/sim/MakeSim2DBService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrong message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doInitAction(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$000(Lcom/samsung/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doQueryAction(I)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$100(Lcom/samsung/contacts/sim/MakeSim2DBService;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doInitAction(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$000(Lcom/samsung/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doAirPlaneAction(I)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$200(Lcom/samsung/contacts/sim/MakeSim2DBService;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doCheckAdnAttribute(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$300(Lcom/samsung/contacts/sim/MakeSim2DBService;II)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doBtSapAction(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$400(Lcom/samsung/contacts/sim/MakeSim2DBService;IIZ)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->this$0:Lcom/samsung/contacts/sim/MakeSim2DBService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    #calls: Lcom/samsung/contacts/sim/MakeSim2DBService;->doBtSapAction(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->access$400(Lcom/samsung/contacts/sim/MakeSim2DBService;IIZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
