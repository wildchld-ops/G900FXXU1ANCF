.class Lcom/samsung/dialer/impl/DialerTutorialDialog$2;
.super Ljava/lang/Object;
.source "DialerTutorialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$2;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$2;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #calls: Lcom/samsung/dialer/impl/DialerTutorialDialog;->setTouchArea()V
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$600(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$2;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #calls: Lcom/samsung/dialer/impl/DialerTutorialDialog;->setPosition()V
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$700(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$2;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #calls: Lcom/samsung/dialer/impl/DialerTutorialDialog;->runAnimation()V
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$800(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    return-void
.end method
