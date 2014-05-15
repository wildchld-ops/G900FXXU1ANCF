.class Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;
.super Landroid/os/Handler;
.source "RestorePreviewMessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/RestorePreviewMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$800(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performLongClick()Z

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$6;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    const-string v1, ""

    #setter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$702(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
