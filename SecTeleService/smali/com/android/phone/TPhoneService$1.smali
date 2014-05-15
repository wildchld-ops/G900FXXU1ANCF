.class Lcom/android/phone/TPhoneService$1;
.super Ljava/lang/Object;
.source "TPhoneService.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneService;->registerScoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TPhoneService"

    const-string v3, "Scover : ignoring message - OEM mode"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v2, v2, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-ne v2, v4, :cond_3

    const-string v2, "TPhoneService"

    const-string v3, "Scover : State Open"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    #setter for: Lcom/android/phone/TPhoneService;->coverState:I
    invoke-static {v2, v4}, Lcom/android/phone/TPhoneService;->access$102(Lcom/android/phone/TPhoneService;I)I

    :goto_1
    iget-object v2, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v3, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->coverState:I
    invoke-static {v3}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)I

    move-result v3

    #calls: Lcom/android/phone/TPhoneService;->sendCoverStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/phone/TPhoneService;->access$200(Lcom/android/phone/TPhoneService;I)V

    goto :goto_0

    :cond_3
    const-string v2, "TPhoneService"

    const-string v3, "Scover : State Close"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/TPhoneService;->coverState:I
    invoke-static {v2, v3}, Lcom/android/phone/TPhoneService;->access$102(Lcom/android/phone/TPhoneService;I)I

    goto :goto_1
.end method
