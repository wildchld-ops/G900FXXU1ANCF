.class public Lcom/android/phone/PhoneUtilsIms;
.super Ljava/lang/Object;
.source "PhoneUtilsIms.java"


# static fields
.field private static final DBG:Z

.field public static dialedNumber:Ljava/lang/String;

.field public static mLowBatteryCheckForCallLog:Z

.field public static mVTPSBarring:Z

.field public static mVideoSpeakerState:Z

.field public static mVoLTEPSBarring:Z

.field public static mVoiceSpeakerState:Z

.field public static retBundle:Landroid/os/Bundle;

.field private static simulateErrorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mLowBatteryCheckForCallLog:Z

    sput-boolean v1, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVoiceSpeakerState:Z

    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVoLTEPSBarring:Z

    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVTPSBarring:Z

    sput v1, Lcom/android/phone/PhoneUtilsIms;->simulateErrorCount:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string v1, "Number is null!!"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->getMobileNumberPrefix(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    move v2, v5

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-eq v4, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v4, v7, :cond_3

    :cond_0
    move v1, v5

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1
.end method

.method public static clearCallFailError()V
    .locals 2

    const-string v0, "PhoneUtilsIms"

    const-string v1, "clearCallFailError"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    :cond_0
    return-void
.end method

.method public static englog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getCallFailError()Landroid/os/Bundle;
    .locals 3

    const-string v0, "PhoneUtilsIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallFailError retBundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const-string v3, "inside getCallerName()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "inside getCallerName() : number is null"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "display_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    if-nez v8, :cond_1

    move-object v8, p0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    move-object v2, v8

    goto :goto_0

    :cond_3
    move-object v8, p0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getCallerName() : Exception !!! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_4

    move-object v8, p0

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-nez v8, :cond_6

    move-object v8, p0

    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_7
    const/4 v1, 0x0

    const/4 v0, 0x0

    throw v2
.end method

.method public static getDivertCallIntent(Z)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/PhoneUtilsIms;->dialedNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "divertCall: divert failed. dialedNumber == null"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    sget-object v4, Lcom/android/phone/PhoneUtilsIms;->dialedNumber:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/phone/PhoneUtilsIms;->dialedNumber:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string v0, "divertCall: divert to CS Call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    const-string v0, "divertToCSVoiceCall"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getError(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    const-string v1, "PhoneUtilsIms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string v0, "(606)"

    goto :goto_0

    :sswitch_2
    const-string v0, "(499)"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x198 -> :sswitch_0
        0x19f -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_0
        0x1e6 -> :sswitch_0
        0x1e7 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x1f8 -> :sswitch_0
        0x25b -> :sswitch_0
        0x835 -> :sswitch_1
        0x836 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getFirstCallerForIMSConference()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v4, :cond_1

    iget-object v1, v3, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iget v0, v3, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    sget-boolean v3, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstCallerForIMSConference :: firstCaller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  noOfRemParticipants="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-object v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method private static getMobileNumberPrefix(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    if-ne p0, v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNameForIMSConference()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iget v0, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v0, v1

    :goto_0
    sget-boolean v1, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNameForIMSConference :: firstCaller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  noOfRemParticipants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v8

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_b

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0907e0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    :goto_4
    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "PhoneUtilsIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside getNameForIMSConference : Exception !!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_6
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_1

    if-eqz v0, :cond_a

    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    if-nez v0, :cond_1

    move-object v0, v8

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_a
    move-object v2, v8

    goto :goto_4

    :cond_b
    move-object v0, v8

    goto/16 :goto_2

    :cond_c
    move v6, v7

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public static getNumberForIMSConference()Ljava/lang/String;
    .locals 11

    const v9, 0x7f0907e0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v4, :cond_2

    iget-object v1, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iget v0, v0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    sget-boolean v4, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumberForIMSConference :: firstCaller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  noOfRemParticipants="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v9, v5}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v3, v9, v4}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    move-object v3, v1

    goto/16 :goto_1

    :cond_6
    move-object v3, v4

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_1

    move-object v3, v1

    goto/16 :goto_1

    :cond_8
    move v0, v2

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public static getRegistrationError()I
    .locals 6

    const/4 v2, -0x1

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getErrorCode(I)I

    move-result v2

    :cond_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRegistrationError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getSIMNumber()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+82"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "+82"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPublicUserUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getSavedVTSpeakerState()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    return v0
.end method

.method public static handleCallFailError(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Landroid/os/Bundle;
    .locals 22

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    sput-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    if-nez p0, :cond_1

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_0

    const-string v19, "PhoneUtilsIms"

    const-string v20, "handleCallFailError Connection is null --- return"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bRetVal"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    :goto_0
    return-object v19

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v13

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_2

    const-string v19, "PhoneUtilsIms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleCallFailError DisconnectCause : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v17, -0x1

    const-string v14, ""

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v15

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "videocall_settings"

    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_3
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_d

    const/4 v3, 0x0

    :cond_4
    :goto_2
    sget-object v19, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_5

    sget-object v19, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_5

    sget-object v19, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_e

    :cond_5
    const/4 v10, 0x1

    :goto_3
    sget-object v19, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_f

    const/4 v12, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    sparse-switch v13, :sswitch_data_0

    :cond_6
    :goto_5
    const-string v19, "ims_ps_barring"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->mVoLTEPSBarring:Z

    if-nez v19, :cond_7

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->mVTPSBarring:Z

    if-eqz v19, :cond_9

    :cond_7
    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->mVoLTEPSBarring:Z

    if-eqz v19, :cond_75

    const/4 v8, 0x1

    :cond_8
    :goto_6
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/PhoneUtilsIms;->mVoLTEPSBarring:Z

    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/PhoneUtilsIms;->mVTPSBarring:Z

    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - bisVolteCall     : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - autoretrySetting : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - bSilentRedial    : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - bDiverttoVolte   : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - bDivert          : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - bDialog          : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[handleCallFailError] - bToast           : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtilsIms;->log(Ljava/lang/String;)V

    if-eqz v8, :cond_77

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bDivert"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->dialedNumber:Ljava/lang/String;

    if-eqz v19, :cond_a

    sget-object v16, Lcom/android/phone/PhoneUtilsIms;->dialedNumber:Ljava/lang/String;

    const/16 v19, 0x0

    sput-object v19, Lcom/android/phone/PhoneUtilsIms;->dialedNumber:Ljava/lang/String;

    :cond_a
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "number"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_b
    :goto_7
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bRetVal"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_c
    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    :sswitch_0
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    const v17, 0x7f09056f

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_1
    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_10

    const-string v19, "PhoneUtilsIms"

    const-string v20, "handleCallFailError RTP timed-out !!!"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v10, :cond_13

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    const v17, 0x7f0908e9

    :cond_11
    :goto_8
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_12
    const v17, 0x7f0907f1

    goto :goto_8

    :cond_13
    if-eqz v12, :cond_14

    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11

    const v17, 0x7f0907f0

    goto :goto_8

    :cond_14
    const v17, 0x7f0907ef

    goto :goto_8

    :sswitch_2
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    const v17, 0x7f0907f9

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_15
    const v17, 0x7f090719

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_3
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const v17, 0x7f09071a

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_16
    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_4
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    const v17, 0x7f0907fa

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_17
    const v17, 0x7f09071b

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_5
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    const v17, 0x7f0907f8

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_18
    const v17, 0x7f09071c

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_6
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    if-eqz v10, :cond_19

    const v17, 0x7f090719

    :goto_9
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1d

    const/4 v5, 0x1

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_19
    const v17, 0x7f0907fa

    goto :goto_9

    :cond_1a
    const v17, 0x7f090719

    goto :goto_9

    :cond_1b
    if-eqz v12, :cond_1c

    const v17, 0x7f0908eb

    goto :goto_9

    :cond_1c
    const v17, 0x7f0908ec

    goto :goto_9

    :cond_1d
    const/4 v4, 0x1

    goto/16 :goto_5

    :sswitch_7
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const v17, 0x7f0908ed

    :cond_1e
    :goto_a
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_1f
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20

    if-eqz v10, :cond_1e

    const v17, 0x7f0908ee

    goto :goto_a

    :cond_20
    const v17, 0x7f0908ee

    goto :goto_a

    :sswitch_8
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_23

    if-eqz v10, :cond_22

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_21

    const v17, 0x7f090561

    :goto_b
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_21
    const v17, 0x7f090562

    goto :goto_b

    :cond_22
    const v17, 0x7f0908f1

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_23
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    const v17, 0x7f0908f0

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_9
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v12, :cond_24

    const v17, 0x7f0908f4

    :goto_c
    const/4 v5, 0x1

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_24
    const v17, 0x7f0908f3

    goto :goto_c

    :sswitch_a
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtilsIms;->canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    if-eqz v19, :cond_26

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_25

    const v17, 0x7f0908f5

    :goto_d
    const/4 v5, 0x1

    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtilsIms;->canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_25
    const v17, 0x7f0908f6

    goto :goto_d

    :cond_26
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_28

    if-eqz v12, :cond_27

    const v17, 0x7f090915

    :goto_e
    goto :goto_d

    :cond_27
    const v17, 0x7f090567

    goto :goto_e

    :cond_28
    if-eqz v12, :cond_29

    const v17, 0x7f090915

    :goto_f
    goto :goto_d

    :cond_29
    const v17, 0x7f090568

    goto :goto_f

    :sswitch_b
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v8, 0x1

    goto/16 :goto_5

    :sswitch_c
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_2b

    const v17, 0x7f090916

    :cond_2a
    :goto_10
    const/4 v5, 0x1

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_2b
    if-eqz v12, :cond_2a

    const v17, 0x7f090915

    goto :goto_10

    :sswitch_d
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2d

    if-eqz v10, :cond_2c

    const v17, 0x7f0908f7

    :cond_2c
    :goto_11
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_2d
    const v17, 0x7f0908f9

    goto :goto_11

    :sswitch_e
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_2e

    const v17, 0x7f0908fa

    :cond_2e
    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_f
    if-eqz v11, :cond_32

    const v17, 0x7f0908fc

    :cond_2f
    :goto_12
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_30

    const/4 v9, 0x1

    :cond_30
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_31

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_31
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_32
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_33

    if-eqz v10, :cond_2f

    const v17, 0x7f0908fd

    goto :goto_12

    :cond_33
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_37

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_35

    if-eqz v12, :cond_34

    const v17, 0x7f090900

    :goto_13
    goto :goto_12

    :cond_34
    const v17, 0x7f0908fe

    goto :goto_13

    :cond_35
    if-eqz v12, :cond_36

    const v17, 0x7f090901

    :goto_14
    goto :goto_12

    :cond_36
    const v17, 0x7f0908ff

    goto :goto_14

    :cond_37
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2f

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_39

    if-eqz v12, :cond_38

    const v17, 0x7f090900

    :goto_15
    const/4 v5, 0x1

    goto :goto_12

    :cond_38
    const v17, 0x7f090561

    goto :goto_15

    :cond_39
    if-eqz v12, :cond_3a

    const v17, 0x7f090901

    :goto_16
    goto :goto_15

    :cond_3a
    const v17, 0x7f090562

    goto :goto_16

    :sswitch_10
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3d

    if-eqz v10, :cond_3b

    const v17, 0x7f09056f

    :cond_3b
    if-eqz v11, :cond_3c

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_3c
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_3d
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3e

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_3e
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_40

    if-eqz v12, :cond_3f

    const v17, 0x7f090903

    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_3f
    const v17, 0x7f090563

    goto :goto_17

    :cond_40
    if-eqz v12, :cond_41

    const v17, 0x7f090904

    :goto_18
    goto :goto_17

    :cond_41
    const v17, 0x7f090564

    goto :goto_18

    :sswitch_11
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_43

    if-eqz v10, :cond_42

    const v17, 0x7f090905

    :cond_42
    :goto_19
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_43
    const v17, 0x7f090905

    goto :goto_19

    :sswitch_12
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_46

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_44

    const v17, 0x7f0907f7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_44
    if-eqz v10, :cond_45

    const v17, 0x7f090906

    :cond_45
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_46
    const v17, 0x7f090906

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_13
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v12, :cond_47

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_47
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_48

    const v17, 0x7f09055d

    :goto_1a
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_48
    const v17, 0x7f09055e

    goto :goto_1a

    :sswitch_14
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_49

    if-eqz v12, :cond_49

    :goto_1b
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_49
    const v17, 0x7f09090a

    goto :goto_1b

    :sswitch_15
    if-eqz v11, :cond_4c

    const v17, 0x7f09090b

    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4b

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4a

    const v17, 0x7f0907f6

    :cond_4a
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_4b
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_4c
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_50

    const-string v19, "single_lte"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4d

    if-eqz v12, :cond_4d

    const v17, 0x7f0907f6

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_4d
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_4f

    if-eqz v10, :cond_4e

    const v17, 0x7f090567

    :cond_4e
    :goto_1c
    const/4 v5, 0x1

    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtilsIms;->canDiverttoVoLTECall(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_4f
    if-eqz v10, :cond_4e

    const v17, 0x7f090568

    goto :goto_1c

    :cond_50
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_51

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_51
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_53

    if-eqz v12, :cond_52

    const v17, 0x7f09090c

    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_52
    const v17, 0x7f090567

    goto :goto_1d

    :cond_53
    if-eqz v12, :cond_54

    const v17, 0x7f09090d

    :goto_1e
    goto :goto_1d

    :cond_54
    const v17, 0x7f090568

    goto :goto_1e

    :sswitch_16
    if-eqz v11, :cond_56

    const v17, 0x7f09090e

    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_55

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_55
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_56
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_59

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_58

    if-eqz v10, :cond_57

    const v17, 0x7f090565

    :cond_57
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_58
    if-eqz v10, :cond_57

    const v17, 0x7f090566

    goto :goto_1f

    :cond_59
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5a

    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_5a
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_5c

    if-eqz v12, :cond_5b

    const v17, 0x7f09090f

    :goto_20
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_5b
    const v17, 0x7f090565

    goto :goto_20

    :cond_5c
    if-eqz v12, :cond_5d

    const v17, 0x7f090910

    :goto_21
    goto :goto_20

    :cond_5d
    const v17, 0x7f090566

    goto :goto_21

    :sswitch_17
    if-eqz v10, :cond_5f

    const v17, 0x7f0907f1

    :cond_5e
    :goto_22
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_5f
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5e

    const v17, 0x7f090907

    goto :goto_22

    :sswitch_18
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_61

    const v17, 0x7f090908

    :cond_60
    :goto_23
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_61
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_62

    if-nez v12, :cond_60

    :cond_62
    const v17, 0x7f090909

    goto :goto_23

    :sswitch_19
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_65

    if-eqz v12, :cond_64

    const v17, 0x7f090915

    :cond_63
    :goto_24
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_69

    if-eqz v12, :cond_68

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_64
    const v17, 0x7f090916

    goto :goto_24

    :cond_65
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_66

    if-eqz v10, :cond_63

    const v17, 0x7f09071d

    goto :goto_24

    :cond_66
    if-eqz v12, :cond_67

    const v17, 0x7f090917

    :goto_25
    goto :goto_24

    :cond_67
    const v17, 0x7f090918

    goto :goto_25

    :cond_68
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_69
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6a

    const/4 v5, 0x1

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_6a
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_1a
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6f

    if-eqz v12, :cond_6e

    const v17, 0x7f090915

    :cond_6b
    :goto_26
    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6c

    if-eqz v12, :cond_72

    const/4 v5, 0x1

    :cond_6c
    :goto_27
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6d

    const/4 v5, 0x1

    const/4 v3, 0x1

    :cond_6d
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_6e
    const v17, 0x7f090916

    goto :goto_26

    :cond_6f
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_70

    if-eqz v10, :cond_6b

    const v17, 0x7f09071d

    goto :goto_26

    :cond_70
    if-eqz v12, :cond_71

    const v17, 0x7f090917

    :goto_28
    goto :goto_26

    :cond_71
    const v17, 0x7f090918

    goto :goto_28

    :cond_72
    const/4 v9, 0x1

    goto :goto_27

    :sswitch_1b
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v17, 0x7f090906

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "message"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bRetVal"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    goto/16 :goto_0

    :sswitch_1c
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    const v17, 0x7f09056a

    const/4 v9, 0x1

    goto/16 :goto_5

    :sswitch_1d
    const-string v19, "feature_lgt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v10, :cond_6

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_73

    const v17, 0x7f09055d

    move/from16 v18, v17

    :goto_29
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v19

    if-nez v19, :cond_8d

    const/4 v5, 0x1

    move/from16 v17, v18

    goto/16 :goto_5

    :cond_73
    const v18, 0x7f09055e

    goto :goto_29

    :sswitch_1e
    const-string v19, "feature_ktt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v12, :cond_74

    const v17, 0x7f0908f4

    :goto_2a
    const/4 v5, 0x1

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_74
    const v17, 0x7f0908f3

    goto :goto_2a

    :cond_75
    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->mVTPSBarring:Z

    if-eqz v19, :cond_8

    const/4 v5, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_76

    const v17, 0x7f09055d

    goto/16 :goto_6

    :cond_76
    const v17, 0x7f09055e

    goto/16 :goto_6

    :cond_77
    if-eqz v6, :cond_7f

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_78

    const-string v19, "PhoneUtilsIms"

    const-string v20, "[handleCallFailError] Divert to VoLTE"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bDivert"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bDivertVolte"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "number"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_7c

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_79

    if-eqz v12, :cond_7b

    const v17, 0x7f090919

    :cond_79
    :goto_2b
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7a

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIms;->getError(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_7a
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_7b
    const v17, 0x7f090560

    goto :goto_2b

    :cond_7c
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7d

    if-eqz v12, :cond_7e

    const v17, 0x7f09055f

    :cond_7d
    :goto_2d
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "yndialog"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_7e
    const v17, 0x7f09091a

    goto :goto_2d

    :cond_7f
    if-eqz v5, :cond_87

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_80

    const-string v19, "PhoneUtilsIms"

    const-string v20, "handleCallFailError Divert to 1x Call"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "bDivert"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "number"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_84

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_81

    if-eqz v12, :cond_83

    const v17, 0x7f090919

    :cond_81
    :goto_2e
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_82

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIms;->getError(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_82
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_83
    const v17, 0x7f090560

    goto :goto_2e

    :cond_84
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_85

    if-eqz v12, :cond_86

    const v17, 0x7f09055f

    :cond_85
    :goto_30
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "yndialog"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_86
    const v17, 0x7f09091a

    goto :goto_30

    :cond_87
    if-eqz v4, :cond_89

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_89

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_88

    const-string v19, "PhoneUtilsIms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleCallFailError bDialog error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "dialog"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "resid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_89
    if-eqz v9, :cond_8c

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_8c

    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_8a

    const-string v19, "PhoneUtilsIms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleCallFailError bToast error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v19, "feature_skt"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8b

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIms;->getError(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_8b
    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "notiType"

    const-string v21, "toast"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/android/phone/PhoneUtilsIms;->retBundle:Landroid/os/Bundle;

    const-string v20, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8c
    sget-boolean v19, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v19, :cond_b

    const-string v19, "PhoneUtilsIms"

    const-string v20, "handleCallFailError - not handling case"

    invoke-static/range {v19 .. v20}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8d
    move/from16 v17, v18

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_13
        0x190 -> :sswitch_1d
        0x193 -> :sswitch_6
        0x194 -> :sswitch_f
        0x198 -> :sswitch_18
        0x19f -> :sswitch_15
        0x1e0 -> :sswitch_8
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_7
        0x1e7 -> :sswitch_e
        0x1f4 -> :sswitch_19
        0x1f7 -> :sswitch_1a
        0x1f8 -> :sswitch_19
        0x25b -> :sswitch_d
        0x25e -> :sswitch_0
        0x44f -> :sswitch_17
        0x453 -> :sswitch_1b
        0x45a -> :sswitch_1e
        0x579 -> :sswitch_1
        0x6a5 -> :sswitch_12
        0x835 -> :sswitch_10
        0x836 -> :sswitch_16
        0x899 -> :sswitch_c
        0x89a -> :sswitch_a
        0x89b -> :sswitch_9
        0x89c -> :sswitch_b
        0x8fd -> :sswitch_1c
        0x8fe -> :sswitch_3
        0x8ff -> :sswitch_5
        0x900 -> :sswitch_4
        0x901 -> :sswitch_2
        0x2712 -> :sswitch_14
    .end sparse-switch
.end method

.method public static handleModifyCallException(Landroid/os/AsyncResult;)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/16 v1, 0x456

    if-ne v0, v1, :cond_1

    const v1, 0x7f0907e6

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x455

    if-ne v0, v1, :cond_2

    const v1, 0x7f0907e6

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "handleModifyCallException"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleModifyCallException"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sip error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "handleModifyCallException"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static handleRegistrationError()I
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getRegistrationError()I

    move-result v2

    const/4 v1, -0x1

    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRegistrationError errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videocall_settings"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    packed-switch v2, :pswitch_data_0

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f090807

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    :goto_1
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRegistrationError divertResID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0908ea

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_1

    :cond_2
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f09055b

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_1

    :cond_3
    const v3, 0x7f09070a

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const v1, 0x7f09055d

    goto :goto_1

    :cond_5
    const v1, 0x7f09055e

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_0
    .end packed-switch
.end method

.method public static hasIMSVideoCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static isIMSConferenceStateChanged()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getStateChanged()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->setStateChanged(Z)V

    :cond_0
    return v1
.end method

.method public static isIMSRegistered()Z
    .locals 5

    const-string v2, "common_volte_vt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v2, "PhoneUtilsIms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMSRegistered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowBatt()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/LowBatteryManager;->getInstance()Lcom/android/phone/LowBatteryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/LowBatteryManager;->getInstance()Lcom/android/phone/LowBatteryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/LowBatteryManager;->isLowBatt()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isVoLTESettingEnabled()Z
    .locals 6

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getServiceStatus()Z

    move-result v1

    :cond_0
    :goto_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isVolteIconPossible(Landroid/content/Context;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v2

    const/4 v0, 0x1

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    move v1, v6

    :goto_0
    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isVoLTESettingEnabled()Z

    move-result v3

    sget-boolean v8, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "PhoneUtilsIms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRegistered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isVolteSupported = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " voicecall_type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLTEConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_2

    if-ne v6, v3, :cond_2

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    move v7, v6

    :cond_2
    return v7

    :cond_3
    move v1, v7

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneUtilsIms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtilsIms"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static needToPlayEndToneForIMS(Lcom/android/internal/telephony/Connection;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMS_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v3, v4, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v1, v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x44d -> :sswitch_0
        0x579 -> :sswitch_0
    .end sparse-switch
.end method

.method public static saveVTSpeakerState(I)V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIms;->hasIMSVideoCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    goto :goto_0
.end method

.method public static setInitialVTSpeakerState()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    const-string v1, "ims_video_settings_initial_speaker"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videocall_speaker"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/phone/PhoneUtilsIms;->mVideoSpeakerState:Z

    :cond_1
    return-void
.end method

.method public static shouldOutgoingIMSCall(Landroid/content/Intent;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "divertToCSVoiceCall"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "divertToCSVoiceCall"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    const-string v3, "android.phone.extra.CALL_TYPE"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-string v3, "PhoneUtilsIms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldOutgoingIMSCall : outgoingIMSCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [ isForceDivertTo1XCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ extraCallType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ isIMSRegistered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "single_lte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "3"

    const-string v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v5, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static validatePhNumberLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
