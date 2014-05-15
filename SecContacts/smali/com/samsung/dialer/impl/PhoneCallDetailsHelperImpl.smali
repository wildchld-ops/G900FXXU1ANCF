.class public Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelperImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x12

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private setUnreadColor(Lcom/android/dialer/PhoneCallDetailsViews;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v2, 0x7f020185

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public setCallDetailHistoryLogTypeImage(ILandroid/widget/ImageView;)V
    .locals 2

    const v0, 0x7f02008a

    const v1, 0x7f020085

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f02008c

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_2
    const v0, 0x7f020181

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_3
    const v0, 0x7f02008d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02015c

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
        0x384 -> :sswitch_3
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_6
    .end sparse-switch
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetailsViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZILcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 23

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    const/4 v13, 0x0

    iget v0, v11, Lcom/android/dialer/calllog/PhoneNumberHelper;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const-string v18, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v13

    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->callTypes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020164

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const-string v18, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v10, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-direct {v10, v12}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    if-eqz p4, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->callTypes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/dialer/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    :cond_1
    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->countryIso:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v18, "PhoneCallDetailsHelperImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPhoneCallDetails, getDisplayNumber : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v7

    const/4 v15, 0x0

    move-object/from16 v16, v6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    const/4 v9, 0x0

    iget v0, v11, Lcom/android/dialer/calllog/PhoneNumberHelper;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    :cond_3
    if-eqz v9, :cond_a

    const v18, 0x7f0e0315

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v18, "iw"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    if-eqz v13, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    const v18, 0x7f0e0221

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const-string v19, "-1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const-string v19, "-2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const-string v19, "-3"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const-string v19, "P"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_6
    move-object v14, v6

    const-string v16, ""

    :cond_7
    const-string v18, "PhoneCallDetailsHelperImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "nameText : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", numberText : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "PhoneCallDetailsHelperImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "listGroupSize : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, p5

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v18, 0x28

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v18, "%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v18, 0x29

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLogsTimeBase()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-static {}, Lcom/samsung/dialer/util/CallLogUtil;->isNetworkRoaming()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/samsung/dialer/util/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    move-wide/from16 v19, v0

    const/16 v21, 0x101

    const-string v22, "Asia/Shanghai"

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/dialer/util/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    :goto_3
    const-string v18, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    if-eqz p4, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a002a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;->setUnreadColor(Lcom/android/dialer/PhoneCallDetailsViews;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    :cond_9
    return-void

    :pswitch_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f02016c

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f02016e

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020169

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f02016d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    move-object v14, v6

    const-string v16, ""

    const v18, 0x7f0e02fb

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_b
    move-object v14, v6

    move-object/from16 v16, v6

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object v14, v6

    move-object/from16 v16, v6

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    move-object/from16 v16, v6

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    move-wide/from16 v19, v0

    const/16 v21, 0x101

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :sswitch_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020187

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020186

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020181

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020189

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :sswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020182

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :sswitch_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020184

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :sswitch_6
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020183

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020187

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
        0x384 -> :sswitch_3
        0x3b6 -> :sswitch_3
        0x44c -> :sswitch_6
    .end sparse-switch
.end method
