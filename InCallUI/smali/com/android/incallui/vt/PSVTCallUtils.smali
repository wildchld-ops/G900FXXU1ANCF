.class public Lcom/android/incallui/vt/PSVTCallUtils;
.super Ljava/lang/Object;
.source "PSVTCallUtils.java"


# static fields
.field private static mImsCallFailErrorBundle:Landroid/os/Bundle;

.field private static mPSBarringEventReceived:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canDivertToVoLTE()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static createIMSCallFailError(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    const-string v1, "createIMSCallFailError"

    invoke-static {v1}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->handlePSBaringEvent(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/incallui/vt/PSVTCallUtils;->setIMSCallFailErrorBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->handleDisconnectCause(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisconnectCauseAction_KTT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    if-eq v7, v12, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_2
    return-object v8

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_5

    const v7, 0x7f070231

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_5
    const v7, 0x7f070207

    goto :goto_3

    :sswitch_2
    if-eqz v3, :cond_6

    const v7, 0x7f070237

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f070209

    goto :goto_4

    :sswitch_3
    if-eqz v3, :cond_7

    const v7, 0x7f070234

    :goto_5
    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f07020a

    goto :goto_5

    :sswitch_4
    if-eqz v3, :cond_8

    const v7, 0x7f070232

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f070208

    goto :goto_6

    :sswitch_5
    if-eqz v3, :cond_9

    const v7, 0x7f070238

    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f07020b

    goto :goto_7

    :sswitch_6
    if-eqz v3, :cond_a

    const v7, 0x7f070269

    const/4 v5, 0x2

    :goto_8
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f07020d

    const/4 v5, 0x2

    goto :goto_8

    :sswitch_7
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_8
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_9
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_a
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_b
    const/16 v10, 0x194

    goto/16 :goto_2

    :sswitch_c
    const/16 v10, 0x198

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_c

    if-eqz v0, :cond_b

    const v7, 0x7f07026d

    const/4 v5, 0x2

    :goto_9
    const/16 v10, 0x19f

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f07026c

    const/4 v5, 0x4

    goto :goto_9

    :cond_c
    const v7, 0x7f070211

    const/4 v5, 0x2

    goto :goto_9

    :sswitch_e
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_f
    if-eqz v3, :cond_d

    if-eqz v0, :cond_e

    const v7, 0x7f07023c

    const/4 v5, 0x2

    :goto_a
    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->canDivertToVoLTE()Z

    move-result v11

    :cond_d
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f07023b

    const/4 v5, 0x4

    goto :goto_a

    :sswitch_10
    if-eqz v3, :cond_f

    const v7, 0x7f07023d

    const/4 v5, 0x2

    :goto_b
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f07021c

    const/4 v5, 0x2

    goto :goto_b

    :sswitch_11
    if-eqz v3, :cond_10

    const v7, 0x7f070271

    :goto_c
    const/4 v5, 0x1

    const/16 v10, 0x1e4

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f070213

    goto :goto_c

    :sswitch_12
    if-eqz v3, :cond_11

    const v7, 0x7f070272

    :goto_d
    const/4 v5, 0x1

    const/16 v10, 0x1e6

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f070214

    goto :goto_d

    :sswitch_13
    const/16 v10, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    const/16 v10, 0x1f3

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_12

    const v7, 0x7f07023e

    :goto_e
    const/4 v5, 0x2

    const/16 v10, 0x1f4

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f07021d

    goto :goto_e

    :sswitch_16
    if-eqz v3, :cond_13

    const v7, 0x7f07023f

    :goto_f
    const/4 v5, 0x2

    const/16 v10, 0x1f7

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f07021e

    goto :goto_f

    :sswitch_17
    if-eqz v3, :cond_14

    const v7, 0x7f070240

    :goto_10
    const/4 v5, 0x2

    const/16 v10, 0x1f8

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f07021f

    goto :goto_10

    :sswitch_18
    if-eqz v3, :cond_15

    const v7, 0x7f070277

    :goto_11
    const/4 v5, 0x1

    const/16 v10, 0x25b

    goto/16 :goto_2

    :cond_15
    const v7, 0x7f070219

    goto :goto_11

    :sswitch_19
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    const/16 v10, 0x25e

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_0
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_3
        0x579 -> :sswitch_4
        0x6a5 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, -0x1

    if-eq v7, v12, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "1544-0010"

    aput-object v14, v12, v13

    invoke-virtual {v1, v7, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v8

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_0

    const v7, 0x7f070231

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_6

    const v7, 0x7f070233

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f070209

    goto :goto_3

    :sswitch_3
    if-eqz v3, :cond_0

    const v7, 0x7f070232

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const v7, 0x7f070220

    const/4 v5, 0x4

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v3, :cond_0

    const v7, 0x7f070235

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    const/16 v10, 0x17c

    goto/16 :goto_2

    :sswitch_6
    if-eqz v3, :cond_8

    const v7, 0x7f070269

    :goto_4
    const/4 v5, 0x1

    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f070221

    goto :goto_4

    :sswitch_7
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-nez v3, :cond_9

    const v7, 0x7f070222

    :goto_5
    const/4 v5, 0x3

    const/16 v10, 0x193

    :goto_6
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f070242

    goto :goto_5

    :cond_a
    if-nez v3, :cond_b

    const v7, 0x7f070222

    :goto_7
    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const v7, 0x7f070242

    goto :goto_7

    :sswitch_8
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-nez v3, :cond_c

    const v7, 0x7f070223

    :goto_8
    const/4 v5, 0x3

    :goto_9
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f070243

    goto :goto_8

    :cond_d
    if-nez v3, :cond_e

    const v7, 0x7f070224

    :goto_a
    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    const v7, 0x7f070244

    goto :goto_a

    :sswitch_9
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    if-nez v3, :cond_f

    const v7, 0x7f070225

    :goto_b
    const/4 v5, 0x3

    :goto_c
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f070245

    goto :goto_b

    :cond_10
    if-nez v3, :cond_11

    const v7, 0x7f070226

    :goto_d
    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    const v7, 0x7f070246

    goto :goto_d

    :sswitch_a
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    if-nez v3, :cond_12

    const v7, 0x7f070227

    :goto_e
    const/4 v5, 0x3

    :goto_f
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f070247

    goto :goto_e

    :cond_13
    if-nez v3, :cond_14

    const v7, 0x7f070228

    :goto_10
    const/4 v5, 0x1

    goto :goto_f

    :cond_14
    const v7, 0x7f070248

    goto :goto_10

    :sswitch_b
    if-eqz v3, :cond_15

    const v7, 0x7f070249

    const/4 v5, 0x1

    :cond_15
    const/16 v10, 0x194

    goto/16 :goto_2

    :sswitch_c
    if-eqz v3, :cond_16

    const v7, 0x7f07024a

    const/4 v5, 0x1

    :cond_16
    const/16 v10, 0x198

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_18

    if-eqz v0, :cond_17

    const v7, 0x7f07026d

    const/4 v5, 0x2

    :goto_11
    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->canDivertToVoLTE()Z

    move-result v11

    :goto_12
    const/16 v10, 0x19f

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f07024b

    const/4 v5, 0x4

    goto :goto_11

    :cond_18
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    const v7, 0x7f070229

    const/4 v5, 0x1

    goto :goto_12

    :cond_19
    const v7, 0x7f07022a

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_e
    if-eqz v3, :cond_1a

    const v7, 0x7f07024c

    const/4 v5, 0x1

    :cond_1a
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_f
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_10
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_1b

    const v7, 0x7f070271

    const/4 v5, 0x1

    :cond_1b
    const/16 v10, 0x1e4

    goto/16 :goto_2

    :sswitch_12
    if-eqz v3, :cond_1c

    const v7, 0x7f070272

    const/4 v5, 0x1

    :cond_1c
    const/16 v10, 0x1e6

    goto/16 :goto_2

    :sswitch_13
    if-eqz v3, :cond_1d

    const v7, 0x7f07024d

    const/4 v5, 0x1

    :cond_1d
    const/16 v10, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_1e

    if-eqz v0, :cond_1f

    const v7, 0x7f070274

    const/4 v5, 0x2

    :cond_1e
    :goto_13
    const/16 v10, 0x1f3

    goto/16 :goto_2

    :cond_1f
    const v7, 0x7f070273

    const/4 v5, 0x4

    goto :goto_13

    :sswitch_15
    if-eqz v3, :cond_20

    const v7, 0x7f07024e

    const/4 v5, 0x1

    :cond_20
    const/16 v10, 0x1f4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_21

    const v7, 0x7f07024f

    const/4 v5, 0x1

    :cond_21
    const/16 v10, 0x1f7

    goto/16 :goto_2

    :sswitch_17
    if-eqz v3, :cond_22

    const v7, 0x7f070250

    const/4 v5, 0x1

    :cond_22
    const/16 v10, 0x1f8

    goto/16 :goto_2

    :sswitch_18
    if-eqz v3, :cond_23

    const v7, 0x7f070251

    const/4 v5, 0x1

    :cond_23
    const/16 v10, 0x25b

    goto/16 :goto_2

    :sswitch_19
    if-eqz v3, :cond_24

    const v7, 0x7f070252

    const/4 v5, 0x1

    :cond_24
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    const/16 v10, 0x25e

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    if-eq v7, v12, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v8

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_6

    const v7, 0x7f070231

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f070207

    goto :goto_3

    :sswitch_2
    if-eqz v3, :cond_7

    const v7, 0x7f070233

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f070209

    goto :goto_4

    :sswitch_3
    if-eqz v3, :cond_8

    const v7, 0x7f070232

    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f070208

    goto :goto_5

    :sswitch_4
    if-eqz v3, :cond_9

    const v7, 0x7f070235

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f07020b

    goto :goto_6

    :sswitch_5
    if-eqz v3, :cond_b

    if-eqz v0, :cond_a

    const v7, 0x7f070268

    const/4 v5, 0x2

    :goto_7
    const/16 v10, 0x17c

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f070267

    const/4 v5, 0x4

    goto :goto_7

    :cond_b
    const/4 v5, 0x5

    goto :goto_7

    :sswitch_6
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_7
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_8
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_9
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_a
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_b
    if-eqz v3, :cond_d

    if-eqz v0, :cond_c

    const v7, 0x7f07026b

    const/4 v5, 0x2

    :goto_8
    const/16 v10, 0x194

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f07026a

    const/4 v5, 0x4

    goto :goto_8

    :cond_d
    const v7, 0x7f07020e

    const/4 v5, 0x2

    goto :goto_8

    :sswitch_c
    if-eqz v3, :cond_e

    const v7, 0x7f07026e

    :goto_9
    const/4 v5, 0x1

    const/16 v10, 0x198

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f07020f

    goto :goto_9

    :sswitch_d
    if-eqz v3, :cond_10

    if-eqz v0, :cond_f

    const v7, 0x7f07026d

    const/4 v5, 0x2

    :goto_a
    const/16 v10, 0x19f

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f07026c

    const/4 v5, 0x4

    goto :goto_a

    :cond_10
    const v7, 0x7f070210

    const/4 v5, 0x2

    goto :goto_a

    :sswitch_e
    if-eqz v3, :cond_12

    if-eqz v0, :cond_11

    const v7, 0x7f070270

    const/4 v5, 0x2

    :goto_b
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f07026f

    const/4 v5, 0x4

    goto :goto_b

    :cond_12
    const v7, 0x7f070212

    const/4 v5, 0x1

    goto :goto_b

    :sswitch_f
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_10
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_13

    const v7, 0x7f070271

    :goto_c
    const/4 v5, 0x1

    const/16 v10, 0x1e4

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f070213

    goto :goto_c

    :sswitch_12
    if-eqz v3, :cond_14

    const v7, 0x7f070272

    :goto_d
    const/4 v5, 0x1

    const/16 v10, 0x1e6

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f070214

    goto :goto_d

    :sswitch_13
    const/16 v10, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_16

    if-eqz v0, :cond_15

    const v7, 0x7f070274

    const/4 v5, 0x2

    :goto_e
    const/16 v10, 0x1f3

    goto/16 :goto_2

    :cond_15
    const v7, 0x7f070273

    const/4 v5, 0x4

    goto :goto_e

    :cond_16
    const v7, 0x7f070215

    const/4 v5, 0x2

    goto :goto_e

    :sswitch_15
    if-eqz v3, :cond_17

    const v7, 0x7f070275

    const/4 v5, 0x1

    :goto_f
    const/16 v10, 0x1f4

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f070216

    const/4 v5, 0x2

    goto :goto_f

    :sswitch_16
    if-eqz v3, :cond_18

    const v7, 0x7f070276

    const/4 v5, 0x1

    :goto_10
    const/16 v10, 0x1f7

    goto/16 :goto_2

    :cond_18
    const v7, 0x7f070218

    const/4 v5, 0x2

    goto :goto_10

    :sswitch_17
    if-eqz v3, :cond_19

    const v7, 0x7f070236

    const/4 v5, 0x1

    :goto_11
    const/16 v10, 0x1f8

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f070217

    const/4 v5, 0x2

    goto :goto_11

    :sswitch_18
    if-eqz v3, :cond_1a

    const v7, 0x7f070277

    :goto_12
    const/4 v5, 0x1

    const/16 v10, 0x25b

    goto/16 :goto_2

    :cond_1a
    const v7, 0x7f070219

    goto :goto_12

    :sswitch_19
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    if-eqz v3, :cond_1c

    if-eqz v0, :cond_1b

    const v7, 0x7f07027a

    const/4 v5, 0x2

    :goto_13
    const/16 v10, 0x25e

    goto/16 :goto_2

    :cond_1b
    const v7, 0x7f070279

    const/4 v5, 0x4

    goto :goto_13

    :cond_1c
    const/4 v5, 0x5

    goto :goto_13

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getError(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-lez p0, :cond_0

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

    :cond_0
    return-object v0
.end method

.method public static getIMSCallFailErrorBundle()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static handleDisconnectCause(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_SKT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/Call;->setSipErrorCode(I)V

    goto :goto_0

    :cond_2
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_KTT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_LGT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public static handlePSBaringEvent(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "handlePSBaringEvent"

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    invoke-static {v13, v14, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_4

    move v0, v11

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v13

    if-eqz v13, :cond_5

    move v2, v12

    :goto_1
    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    const v6, 0x7f070268

    const/4 v4, 0x2

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, -0x1

    if-eq v6, v11, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v7

    :cond_4
    move v0, v12

    goto/16 :goto_0

    :cond_5
    move v2, v11

    goto/16 :goto_1

    :cond_6
    const v6, 0x7f070267

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x5

    goto/16 :goto_2
.end method

.method public static isPSBarringEventReceived()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    return v0
.end method

.method public static isSilentRedialing()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    const-string v2, "noti_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PSVTCallUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setIMSCallFailErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    sput-object p0, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static setPSBarringEventReceived(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public static showSecEndCallScreenNotTPhone()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    const-string v2, "noti_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
