.class public Lcom/android/mms/ui/BaseMessageItem;
.super Ljava/lang/Object;
.source "BaseMessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private final mBoxId:I

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mGroupId:J

.field mGroupType:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mRecipientIds:Ljava/lang/String;

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field final mThreadId:J

.field mTime:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Mms/ConversationMessageItem"

    sput-object v0, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    const-string v15, "sms"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    invoke-static {v15}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v15

    if-eqz v15, :cond_1

    const v15, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-lez v15, :cond_3

    move-wide v3, v5

    :goto_1
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v15

    if-nez v15, :cond_0

    const v15, 0x7f0c000f

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, ""

    :goto_3
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_3
    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    const-string v15, "mms"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget-object v15, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    const/16 v15, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const-string v15, ""

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    :cond_6
    :goto_4
    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v15

    if-nez v15, :cond_0

    const v15, 0x7f0c000f

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v10, v15}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0016

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v7

    sget-object v15, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    const-string v16, "MMS has zero slides"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    :try_start_1
    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_9
    new-instance v15, Lcom/google/android/mms/MmsException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown type of the message: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v15
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    return-wide v0
.end method

.method public isGroupSms()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 2

    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->getBoxId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v6, :cond_3

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    :cond_0
    move v2, v3

    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method public isSms()Z
    .locals 2

    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
