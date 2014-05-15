.class public Lcom/android/incallui/InCallDUOSUIControl;
.super Ljava/lang/Object;
.source "InCallDUOSUIControl.java"


# static fields
.field private static sInCallDUOSUIControl:Lcom/android/incallui/InCallDUOSUIControl;


# instance fields
.field private final SIM1:I

.field private final SIM2:I

.field private mContext:Landroid/content/Context;

.field private mControlDialog:Landroid/app/AlertDialog;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/InCallDUOSUIControl;

    invoke-direct {v0}, Lcom/android/incallui/InCallDUOSUIControl;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallDUOSUIControl;->sInCallDUOSUIControl:Lcom/android/incallui/InCallDUOSUIControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->SIM1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->SIM2:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private checkGGDuos(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    if-eq v3, v2, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    if-eq v3, v2, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    if-ne v3, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    if-eq v3, v2, :cond_5

    :cond_4
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    if-ne v3, v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    :goto_0
    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/incallui/InCallDUOSUIControl;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallDUOSUIControl;->sInCallDUOSUIControl:Lcom/android/incallui/InCallDUOSUIControl;

    return-object v0
.end method


# virtual methods
.method public dismissControlPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public duosAnswerCall(Lcom/android/services/telephony/common/Call;)V
    .locals 17

    const-string v14, "DuosAnswerCall..."

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/InCallDUOSUIControl;->getOtherSimId(I)I

    move-result v11

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/incallui/CallList;->getOutgoingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/incallui/CallList;->getBackgroundCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/incallui/CallList;->getIncomingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v12

    if-eqz v6, :cond_0

    const-string v14, "cancel outgoing call of other phone..."

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v14

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_2
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v15, 0x7f070028

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_0
    if-nez v10, :cond_3

    if-nez v11, :cond_9

    const-string v10, "SIM1"

    :cond_3
    :goto_1
    const/4 v14, 0x1

    if-ne v9, v14, :cond_a

    const/4 v14, 0x2

    new-array v7, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v15, 0x7f070113

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "%s"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v16, 0x7f070115

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%s"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v16, 0x7f070114

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%s"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x0

    aget-object v14, v7, v14

    const/4 v15, 0x1

    aget-object v15, v7, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosAnswerCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    :cond_6
    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/incallui/InCallDUOSUIControl;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/InCallDUOSUIControl;->getCallerName(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_2

    :cond_9
    const-string v10, "SIM2"

    goto :goto_1

    :cond_a
    const/4 v14, 0x2

    if-ne v9, v14, :cond_c

    const-string v1, "%s"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v15, 0x7f070113

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v15, 0x7f07028f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "%s"

    invoke-virtual {v14, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosAnswerCallDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v15, 0x7f07028e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "%s"

    invoke-virtual {v14, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_c
    const-string v14, "DuosAnswerCall():NO dialog created..."

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public duosPhoneSwitch(I)V
    .locals 20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DuosPhoneSwitch: simid:"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v12

    move/from16 v0, p1

    if-ne v12, v0, :cond_0

    const-string v3, "DuosPhoneSwitch: ignore request..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v16, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/incallui/CallList;->getBackgroundCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/incallui/CallList;->getIncomingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/incallui/CallList;->getIncomingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v8

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/incallui/InCallDUOSUIControl;->getSIMName(I)Ljava/lang/String;

    move-result-object v16

    :goto_1
    if-nez v16, :cond_1

    if-nez v12, :cond_b

    const-string v16, "SIM1"

    :cond_1
    :goto_2
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/incallui/InCallDUOSUIControl;->checkGGDuos(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallDUOSUIControl;->switchPhone(I)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-nez v7, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    if-eqz v8, :cond_5

    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallDUOSUIControl;->getCallerName(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isDualInComingCallState()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallDUOSUIControl;->switchCallScreen(I)V

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallDUOSUIControl;->switchPhone(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_a

    if-eqz v7, :cond_a

    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_9

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallDUOSUIControl;->switchPhone(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallDUOSUIControl;->switchPhone(I)V

    goto/16 :goto_0

    :cond_b
    const-string v16, "SIM2"

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x2

    if-ne v15, v3, :cond_d

    const-string v9, "%s"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v18, 0x7f070291

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v18, 0x7f07028e

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v18, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosPhoneSwitchDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x1

    if-ne v15, v3, :cond_e

    const/4 v3, 0x2

    new-array v13, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const v18, 0x7f070113

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v9, "%s"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f070115

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f070114

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v3

    const/4 v3, 0x0

    aget-object v3, v13, v3

    const/16 v18, 0x1

    aget-object v18, v13, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosPhoneSwitchDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "DuosPhoneSwitch():NO dialog created..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getCallerName(I)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOtherSimId(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSIMName(I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string v1, "feature_chn_duos_support_cgg"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GSM"

    const-string v2, "gsm.sim.selectnetwork"

    const-string v3, "CDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "gsm.sim.cardname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSIMName: simidx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "gsm.sim.cardname2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hangUpOtherThenAnswer()V
    .locals 8

    const-string v6, "hangUpOtherThenAnswer"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallDUOSUIControl;->getOtherSimId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v1, v4}, Lcom/android/incallui/CallList;->getBackgroundCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getIncomingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    :cond_2
    return-void
.end method

.method public hangupMeThenSwitch()V
    .locals 7

    const-string v5, "hangUpThenAnswer"

    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallDUOSUIControl;->getOtherSimId(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getBackgroundCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallDUOSUIControl;->switchPhone(I)V

    return-void
.end method

.method public holdMeThenSwitch()V
    .locals 7

    const-string v4, "holdOtherThenSwitch"

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallDUOSUIControl;->getOtherSimId(I)I

    move-result v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallDUOSUIControl;->switchPhone(I)V

    return-void
.end method

.method public holdOtherThenAnswer()V
    .locals 8

    const-string v6, "holdOtherThenAnswer"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallDUOSUIControl;->getOtherSimId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallList;->getActiveCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getIncomingCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallList;->isMultiParty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/incallui/CallCommandClient;->holdMultiSim(I)V

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    :cond_2
    return-void
.end method

.method public initialize(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/InCallDUOSUIControl;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iput-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallDUOSUIControl"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ringtoneWaitingtoneCotrol(I)V
    .locals 0

    return-void
.end method

.method public setAudioPath(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallDUOSUIControl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez p1, :cond_0

    const-string v1, "phone_type=cp1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "phone_type=cp2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDuosAnswerCallDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/incallui/InCallDUOSUIControl;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07015e

    new-instance v2, Lcom/android/incallui/InCallDUOSUIControl$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallDUOSUIControl$7;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07002a

    new-instance v2, Lcom/android/incallui/InCallDUOSUIControl$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallDUOSUIControl$8;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosControlDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showDuosAnswerCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/incallui/InCallDUOSUIControl;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    new-instance v2, Lcom/android/incallui/InCallDUOSUIControl$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallDUOSUIControl$5;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07002a

    new-instance v3, Lcom/android/incallui/InCallDUOSUIControl$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallDUOSUIControl$6;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosControlDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showDuosControlDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl;->mControlDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showDuosPhoneSwitchDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/incallui/InCallDUOSUIControl;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07015e

    new-instance v2, Lcom/android/incallui/InCallDUOSUIControl$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallDUOSUIControl$3;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07002a

    new-instance v2, Lcom/android/incallui/InCallDUOSUIControl$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallDUOSUIControl$4;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosControlDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showDuosPhoneSwitchDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/incallui/InCallDUOSUIControl;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    new-instance v2, Lcom/android/incallui/InCallDUOSUIControl$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallDUOSUIControl$1;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07002a

    new-instance v3, Lcom/android/incallui/InCallDUOSUIControl$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallDUOSUIControl$2;-><init>(Lcom/android/incallui/InCallDUOSUIControl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallDUOSUIControl;->showDuosControlDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public switchCallScreen(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCallScreen : targetSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->switchCallScreen(I)V

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->updateAnswerFragmentUIWithCurrentCall()V

    return-void
.end method

.method public switchPhone(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchPhone : targetSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallDUOSUIControl;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getFirstCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallDUOSUIControl;->setAudioPath(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallDUOSUIControl;->switchCallScreen(I)V

    :cond_1
    return-void
.end method
