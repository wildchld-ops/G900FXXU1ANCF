.class abstract Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;
.super Ljava/lang/Thread;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field protected final mSubscription:I

.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    iput p4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSimCheckSimPuk:run(), mPuk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "phone"

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    iget v5, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
