.class Lcom/android/mms/transaction/SmsReceiverService$1;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "[SMS]Receiver chn spamfilter : onServiceConnected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {p2}, Lcom/tencent/engine/IEngineService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/engine/IEngineService;

    move-result-object v1

    #setter for: Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$002(Lcom/android/mms/transaction/SmsReceiverService;Lcom/tencent/engine/IEngineService;)Lcom/tencent/engine/IEngineService;

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/transaction/SmsReceiverService;->mSveConnected:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$002(Lcom/android/mms/transaction/SmsReceiverService;Lcom/tencent/engine/IEngineService;)Lcom/tencent/engine/IEngineService;

    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/transaction/SmsReceiverService;->mSveConnected:Z

    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "[SMS]Receiver chn spamfilter : onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
