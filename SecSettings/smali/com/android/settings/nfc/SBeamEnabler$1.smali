.class Lcom/android/settings/nfc/SBeamEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SBeamEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/SBeamEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeamEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeamEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "turn_on"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #setter for: Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z
    invoke-static {v4, v2}, Lcom/android/settings/nfc/SBeamEnabler;->access$002(Lcom/android/settings/nfc/SBeamEnabler;Z)Z

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #calls: Lcom/android/settings/nfc/SBeamEnabler;->updateUiPref(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/nfc/SBeamEnabler;->access$100(Lcom/android/settings/nfc/SBeamEnabler;Z)V

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #calls: Lcom/android/settings/nfc/SBeamEnabler;->updateUiSwitch(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/nfc/SBeamEnabler;->access$200(Lcom/android/settings/nfc/SBeamEnabler;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.android.settings.nfc.SBeam.SBEAM_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SBeam_on_off"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "sbeam_last_status"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SBeamEnabler.ACTION_SBEAM_CHANGED : Cur ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Last ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #setter for: Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z
    invoke-static {v4, v2}, Lcom/android/settings/nfc/SBeamEnabler;->access$002(Lcom/android/settings/nfc/SBeamEnabler;Z)Z

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #setter for: Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z
    invoke-static {v4, v1}, Lcom/android/settings/nfc/SBeamEnabler;->access$302(Lcom/android/settings/nfc/SBeamEnabler;Z)Z

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #getter for: Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v5}, Lcom/android/settings/nfc/SBeamEnabler;->access$400(Lcom/android/settings/nfc/SBeamEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v5

    const/4 v6, 0x0

    #calls: Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V
    invoke-static {v4, v5, v6}, Lcom/android/settings/nfc/SBeamEnabler;->access$500(Lcom/android/settings/nfc/SBeamEnabler;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.nfc.extra.ADAPTER_STATE"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v4, v3, :cond_3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    #calls: Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V
    invoke-static {v4}, Lcom/android/settings/nfc/SBeamEnabler;->access$600(Lcom/android/settings/nfc/SBeamEnabler;)V

    goto :goto_0

    :cond_4
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "[SBeam]"

    const-string v5, "ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v4}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    goto/16 :goto_0
.end method
