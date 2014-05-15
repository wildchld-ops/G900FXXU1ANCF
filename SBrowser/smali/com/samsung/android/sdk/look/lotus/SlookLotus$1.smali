.class Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;
.super Lcom/samsung/android/glancecard/IGlanceCardChangedListener$Stub;
.source "SlookLotus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/look/lotus/SlookLotus;->setSlookLotusActionListener(Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/look/lotus/SlookLotus;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/look/lotus/SlookLotus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;->this$0:Lcom/samsung/android/sdk/look/lotus/SlookLotus;

    invoke-direct {p0}, Lcom/samsung/android/glancecard/IGlanceCardChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedAction(IILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;->this$0:Lcom/samsung/android/sdk/look/lotus/SlookLotus;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mSlookLotusActionListener:Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->access$100(Lcom/samsung/android/sdk/look/lotus/SlookLotus;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;->this$0:Lcom/samsung/android/sdk/look/lotus/SlookLotus;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mSlookLotusActionListener:Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->access$100(Lcom/samsung/android/sdk/look/lotus/SlookLotus;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;->onReceivedAction(IILandroid/os/Bundle;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
