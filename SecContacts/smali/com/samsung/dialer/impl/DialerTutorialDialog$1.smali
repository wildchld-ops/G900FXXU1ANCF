.class Lcom/samsung/dialer/impl/DialerTutorialDialog$1;
.super Landroid/os/Handler;
.source "DialerTutorialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/DialerTutorialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->rlTutorialDialog:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$100(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->runSetStep:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$000(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->btnNumbers:[Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$200(Lcom/samsung/dialer/impl/DialerTutorialDialog;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$300(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->btnNumbers:[Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$200(Lcom/samsung/dialer/impl/DialerTutorialDialog;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$300(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$308(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$300(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->btnNumbers:[Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$200(Lcom/samsung/dialer/impl/DialerTutorialDialog;)[Landroid/view/View;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->tutorialSenarioResult()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->show()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->tutorialSenarioResult()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->finishTutorial()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$400(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->show()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->tutorialSenarioResult()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$500(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x63 -> :sswitch_6
    .end sparse-switch
.end method
