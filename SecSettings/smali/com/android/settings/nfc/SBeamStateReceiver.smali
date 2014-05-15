.class public Lcom/android/settings/nfc/SBeamStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBeamStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "android.nfc.extra.ABEAM_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v7, "[SBeam]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SBeamStateReceiver : abeam > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_4
    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "android.nfc.extra.ADAPTER_STATE"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v7, v4, :cond_6

    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->isPowerOff()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "[SBeam]"

    const-string v8, "SBeamStateReceiver : Ignore NFC off"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_6
    const/4 v7, 0x3

    if-ne v7, v4, :cond_0

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_7
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v7, "[SBeam]"

    const-string v8, "SBeamStateReceiver : can\'t load nfcadpater(nfcAdapter is null)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "[SBeam]"

    const-string v8, "SBeamStateReceiver : restore status because of NFC"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "android.nfc.extra.ADAPTER_STATE"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x5

    if-ne v7, v4, :cond_0

    const-string v7, "[SBeam]"

    const-string v8, "SBeamStateReceiver : R/W P2P turn off"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_b
    const-string v7, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "turn_on"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v7, "[SBeam]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SBeamStateReceiver : Quick btn ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_13

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v1

    const-string v7, "[SBeam]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SBeamStateReceiver : AllowCondition ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v7, v1, :cond_d

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    :cond_c
    :goto_1
    if-eqz v1, :cond_e

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x3

    if-ne v7, v1, :cond_c

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showAirplaneMode(Landroid/content/Context;)V

    goto :goto_1

    :cond_e
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    if-nez v5, :cond_f

    const-string v7, "[SBeam]"

    const-string v8, "SBeamStateReceiver : can\'t load nfcadpater(nfcAdapter is null)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10

    const/4 v7, 0x2

    if-eq v6, v7, :cond_11

    :cond_10
    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_11
    const/4 v7, 0x5

    if-ne v6, v7, :cond_12

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :cond_12
    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_13
    const/4 v7, 0x1

    invoke-static {p1, v3, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_14
    const-string v7, "com.android.nfc.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "[SBeam]"

    const-string v8, "SBeamStateReceiver : apply eas policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
