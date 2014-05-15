.class public Lcom/android/incallui/vt/VTCallUtils;
.super Ljava/lang/Object;
.source "VTCallUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsTelefonicaOperator(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "722010"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "722070"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "73603"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "71204"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "70403"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "71402"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "74404"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v2, "telephonyManager is null"

    invoke-static {v2}, Lcom/android/incallui/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static IsVAUOperator(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "50503"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "telephonyManager is null"

    invoke-static {v1}, Lcom/android/incallui/vt/VTCallUtils;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method private static isCMCCVTFallBackCondtion(Lcom/android/services/telephony/common/Call$DisconnectCause;)Z
    .locals 3

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_BEARER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_RESOURCE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCMCCVTFallBackCondtion : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/vt/VTCallUtils;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisconnectedCauseForCallFailOption(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usecall_fail_option"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDisconnectedCauseForCallFailOption : cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/vt/VTCallUtils;->log(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallCommandClient;->is2GNetwork()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne v1, v4, :cond_4

    :cond_1
    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/vt/VTCallUtils;->IsTelefonicaOperator(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    :cond_2
    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_ANSWER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_USER_RESP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/vt/VTCallUtils;->IsVAUOperator(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    :cond_3
    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_BEARER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    const-string v4, "vt_cmcc_operator_fallback"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/android/incallui/vt/VTCallUtils;->isCMCCVTFallBackCondtion(Lcom/android/services/telephony/common/Call$DisconnectCause;)Z

    move-result v2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDisconnectedCauseForCallFailOption : return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/vt/VTCallUtils;->log(Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VTCallUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
