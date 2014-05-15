.class public Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;
.super Lcom/samsung/contacts/sim/PhoneBookSimOperation;
.source "PhoneBookMultiSimOperation.java"


# static fields
.field private static final NOT_USED_STR:Ljava/lang/String;

.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

.field public static isFirstCheckSimInfo:Z

.field public static mAnrFieldCount2:I

.field private static mAnrLength2:[I

.field private static mAnrMaxIndex2:[I

.field private static mAnrUsedIndex2:[I

.field private static mCurrentSimState2:I

.field private static mEmailLength2:I

.field private static mEmailMaxIndex2:I

.field private static mEmailUsedIndex2:I

.field private static mMaxCount2:I

.field private static mNameLength2:I

.field private static mNumberLength2:I

.field private static mSim1Icon:I

.field private static mSim1Name:Ljava/lang/String;

.field private static mSim2Icon:I

.field private static mSim2Name:Ljava/lang/String;

.field protected static mSim2Type:Ljava/lang/String;

.field protected static mTelMan2:Landroid/telephony/TelephonyManager;

.field private static mUsedCount2:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, -0x1

    sput-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->NOT_USED_STR:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    sput-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrFieldCount2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex2:I

    sput v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex2:I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    sput-boolean v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookSimOperation;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private fillSimInfo()V
    .locals 3

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_2"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0326

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    :cond_1
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSimInfo sim1 name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim2 name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSimInfo sim1 icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim2 icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public copyAllNumberToSim(JII)I
    .locals 34

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->copyAllNumberToSim(JI)I

    move-result v31

    :cond_0
    :goto_0
    return v31

    :cond_1
    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v12

    :goto_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "for_export_only"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v32

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v32

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "data"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->DATA_PROJECTION2:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    const/16 v17, 0x0

    const/16 v31, 0x0

    const-string v26, ""

    const-string v27, ""

    const-string v20, ""

    const-string v13, ""

    const-string v10, ""

    const-string v11, ""

    const/16 v22, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v23, 0x1

    const-string v4, "PhoneBookMultiSimOperation"

    const-string v5, "copyAllNumberToSim : start"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_3

    const-string v4, "PhoneBookMultiSimOperation"

    const-string v5, "copyToSim : dataCursor is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, -0x3

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    :cond_4
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v0, v17

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    add-int/lit8 v17, v17, 0x1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_6
    if-eqz v22, :cond_8

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v22, 0x0

    :cond_7
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_8
    if-eqz v24, :cond_9

    if-lez v12, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrFull(I)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v24, 0x0

    goto :goto_5

    :cond_9
    if-eqz v25, :cond_a

    const/4 v4, 0x1

    if-le v12, v4, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrFull(I)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v25, 0x0

    goto :goto_5

    :cond_a
    if-eqz v23, :cond_7

    const/4 v4, 0x2

    if-le v12, v4, :cond_7

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrFull(I)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v23, 0x0

    goto :goto_5

    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v31, -0x2

    goto/16 :goto_0

    :cond_d
    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    if-le v4, v5, :cond_e

    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    :cond_e
    const-string v4, "tag"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v27, :cond_11

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_10

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :cond_10
    add-int/lit8 v31, v31, 0x1

    const-string v4, "number"

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-lez v12, :cond_13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-lez v4, :cond_13

    invoke-static {v13}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_12

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_12
    add-int/lit8 v31, v31, 0x1

    const-string v4, "AnrNumber"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v4, 0x1

    if-le v12, v4, :cond_15

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-lez v4, :cond_15

    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_14

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_14
    add-int/lit8 v31, v31, 0x1

    const-string v4, "AnrANumber"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v4, 0x2

    if-le v12, v4, :cond_17

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-lez v4, :cond_17

    invoke-static {v11}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_16

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v11, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_16
    add-int/lit8 v31, v31, 0x1

    const-string v4, "AnrBNumber"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isEmailFull()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    if-le v4, v5, :cond_18

    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    :cond_18
    const-string v4, "emails"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/16 v28, 0x0

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.contacts"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v16

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->ADN2_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1a
    if-eqz v28, :cond_1c

    move-object/from16 v0, v28

    array-length v4, v0

    if-lez v4, :cond_1c

    const/4 v4, 0x0

    aget-object v4, v28, v4

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v29

    const-wide/16 v4, 0x0

    cmp-long v4, v29, v4

    if-gez v4, :cond_0

    const/16 v31, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v19

    const/16 v31, -0x1

    if-eqz v16, :cond_0

    :goto_6
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    :catch_1
    move-exception v19

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v31, -0x1

    if-eqz v16, :cond_0

    goto :goto_6

    :catchall_0
    move-exception v4

    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1b
    throw v4

    :cond_1c
    const/16 v31, -0x1

    goto/16 :goto_0
.end method

.method public copyToSim(JIZ)I
    .locals 36

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->copyToSim(JZ)I

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-wide/16 v11, -0x1

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v15

    :goto_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "for_export_only"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v34

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "data"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->DATA_PROJECTION2:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id =\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v34

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v11

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    const-string v29, ""

    const-string v30, ""

    const-string v22, ""

    const-string v16, ""

    const-string v13, ""

    const-string v14, ""

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v26, 0x1

    const-string v4, "PhoneBookMultiSimOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ------------ copyToSim : destinationSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v20, :cond_4

    const-string v4, "PhoneBookMultiSimOperation"

    const-string v5, "copyToSim : dataCursor is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    goto/16 :goto_0

    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v23, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v25, :cond_6

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v25, 0x0

    :cond_5
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_5

    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v11

    if-nez v4, :cond_5

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v24, :cond_8

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v24, 0x0

    goto :goto_3

    :cond_8
    if-eqz v27, :cond_9

    if-lez v15, :cond_9

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v27, 0x0

    goto :goto_3

    :cond_9
    if-eqz v28, :cond_a

    const/4 v4, 0x1

    if-le v15, v4, :cond_a

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v28, 0x0

    goto :goto_3

    :cond_a
    if-eqz v26, :cond_b

    const/4 v4, 0x2

    if-le v15, v4, :cond_b

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v26, 0x0

    goto :goto_3

    :cond_b
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_3

    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    :cond_d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, -0x2

    goto/16 :goto_0

    :cond_e
    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    if-le v4, v5, :cond_f

    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    :cond_f
    const-string v4, "tag"

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v30, :cond_12

    invoke-static/range {v30 .. v30}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_11

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    :cond_11
    const-string v4, "number"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-lez v15, :cond_14

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-lez v4, :cond_14

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_13

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :cond_13
    const-string v4, "AnrNumber"

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v4, 0x1

    if-le v15, v4, :cond_16

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-lez v4, :cond_16

    invoke-static {v13}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_15

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_15
    const-string v4, "AnrANumber"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v4, 0x2

    if-le v15, v4, :cond_18

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-lez v4, :cond_18

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    if-le v4, v5, :cond_17

    const/4 v4, 0x0

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v14, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_17
    const-string v4, "AnrBNumber"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isEmailFull()Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    if-le v4, v5, :cond_19

    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    :cond_19
    const-string v4, "emails"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/16 v31, 0x0

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.contacts"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v19

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->ADN2_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v31

    if-eqz v19, :cond_1b

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1b
    if-eqz v31, :cond_1d

    move-object/from16 v0, v31

    array-length v4, v0

    if-lez v4, :cond_1d

    const/4 v4, 0x0

    aget-object v4, v31, v4

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-gez v4, :cond_1e

    const/4 v4, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v21

    const/4 v4, -0x1

    if-eqz v19, :cond_0

    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    :catch_1
    move-exception v21

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, -0x1

    if-eqz v19, :cond_0

    goto :goto_4

    :catchall_1
    move-exception v4

    if-eqz v19, :cond_1c

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1c
    throw v4

    :cond_1d
    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public getAnrFieldCount(I)I
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getAnrFieldCount()I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const-string v2, "PhoneBookMultiSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrFieldCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return -1000  simId is wrong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x3e8

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v0

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimType(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    :cond_3
    const-string v3, "2"

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v3, :cond_4

    sput-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimStatus(Ljava/lang/String;I)V

    :cond_4
    sput v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrFieldCount2:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrSupported(II)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrFieldCount2:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrFieldCount2:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "PhoneBookMultiSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAnrFieldCount2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrFieldCount2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrFieldCount2:I

    goto :goto_0
.end method

.method public getEmailLength(I)I
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getEmailLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimStatus(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Length of email : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    goto :goto_0

    :cond_2
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return -1000  simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public getEnableCount(I)I
    .locals 3

    if-nez p1, :cond_0

    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount:I

    sget v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    sget v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableCount("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return -1000  simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public getNameLength(I)I
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getNameLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimStatus(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNameLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Length of name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    goto :goto_0

    :cond_2
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNameLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return -1000  simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public getNumberLength(I)I
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getNumberLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimStatus(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Length of number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    goto :goto_0

    :cond_2
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return -1000  simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public getSimContactDetailIcon(I)I
    .locals 4

    const v1, 0x7f0200a2

    const v0, 0x7f0200a1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimContactDetailIcon("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return -1000  simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :goto_0
    return v0

    :cond_0
    sget-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->fillSimInfo()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    :cond_1
    if-nez p1, :cond_2

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    :goto_1
    packed-switch v2, :pswitch_data_0

    if-nez p1, :cond_3

    :goto_2
    :pswitch_0
    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimContactDetailIcon("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") retSimIconId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const v0, 0x7f0200a3

    goto :goto_2

    :pswitch_3
    const v0, 0x7f0200a9

    goto :goto_2

    :pswitch_4
    const v0, 0x7f0200a7

    goto :goto_2

    :pswitch_5
    const v0, 0x7f0200a6

    goto :goto_2

    :pswitch_6
    const v0, 0x7f0200a5

    goto :goto_2

    :pswitch_7
    const v0, 0x7f0200a8

    goto :goto_2

    :pswitch_8
    const v0, 0x7f0200a4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimIcon(I)I
    .locals 4

    const v1, 0x7f0201cb

    const v0, 0x7f0201ca

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimIcon("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return -1000  simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :goto_0
    return v0

    :cond_0
    sget-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->fillSimInfo()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    :cond_1
    if-nez p1, :cond_2

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    :goto_1
    packed-switch v2, :pswitch_data_0

    if-nez p1, :cond_3

    :goto_2
    :pswitch_0
    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimIcon("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") retSimIconId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const v0, 0x7f0201c9

    goto :goto_2

    :pswitch_3
    const v0, 0x7f0201d1

    goto :goto_2

    :pswitch_4
    const v0, 0x7f0201cf

    goto :goto_2

    :pswitch_5
    const v0, 0x7f0201ce

    goto :goto_2

    :pswitch_6
    const v0, 0x7f0201cd

    goto :goto_2

    :pswitch_7
    const v0, 0x7f0201d0

    goto :goto_2

    :pswitch_8
    const v0, 0x7f0201cc

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return null simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->NOT_USED_STR:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->fillSimInfo()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheckSimInfo:Z

    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    :goto_1
    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSimStatus(Ljava/lang/String;I)V
    .locals 10

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v0

    const-string v3, ""

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_0

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return simId is wrong"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_6

    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSimType:Ljava/lang/String;

    sget-object p1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSimType:Ljava/lang/String;

    const-string v6, "ril.IsCSIM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    const-string v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "3"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "4"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_2
    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")  Start : 2G"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    const/4 v2, 0x0

    if-nez p2, :cond_7

    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    const/16 v6, 0x6f3a

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    if-nez p2, :cond_8

    const/4 v6, 0x0

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount:I

    const/4 v6, 0x1

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount:I

    const/4 v6, 0x3

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength:I

    const/4 v6, 0x4

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength:I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    if-nez p2, :cond_10

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    sput-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    sget v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    const-string v6, "PhoneBookMultiSimOperation"

    const-string v7, "Failed to get strogae info. Sim is initializing"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck:Z

    :cond_5
    :goto_5
    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")  End"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v6, "ril.ICC_TYPE2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    sget-object p1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    const-string v6, "ril.IsCSIM2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    :try_start_1
    const-string v6, "simphonebook2"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_2

    :catch_0
    move-exception v1

    const-string v6, "PhoneBookMultiSimOperation"

    const-string v7, "RemoteException occured"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_1
    move-exception v1

    const-string v6, "PhoneBookMultiSimOperation"

    const-string v7, "SecurityException occured"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_8
    const/4 v6, 0x0

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    const/4 v6, 0x1

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    const/4 v6, 0x3

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    const/4 v6, 0x4

    aget v6, v4, v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    const-string v6, "2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_a
    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") Start : 3G"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_d

    :try_start_2
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    :cond_b
    :goto_7
    if-eqz v5, :cond_4

    if-nez p2, :cond_e

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength:I

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength:I

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex:I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailMaxIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailUsedIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_4

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    const/4 v6, 0x3

    if-le v0, v6, :cond_c

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v7, 0x2

    const/16 v8, 0x9

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v7, 0x2

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v7, 0x3

    const/16 v8, 0xa

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v7, 0x3

    const/16 v8, 0xa

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    :cond_c
    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-le v0, v6, :cond_4

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    :try_start_3
    const-string v6, "simphonebook2"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto/16 :goto_6

    :catch_2
    move-exception v1

    const-string v6, "PhoneBookMultiSimOperation"

    const-string v7, "RemoteException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_3
    move-exception v1

    const-string v6, "PhoneBookMultiSimOperation"

    const-string v7, "SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_e
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex2:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex2:I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNameLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mNumberLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailMaxIndex2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailUsedIndex2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_4

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    const/4 v6, 0x3

    if-le v0, v6, :cond_f

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v7, 0x2

    const/16 v8, 0x9

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v7, 0x2

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v7, 0x3

    const/16 v8, 0xa

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v7, 0x3

    const/16 v8, 0xa

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    aput v8, v6, v7

    :cond_f
    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-le v0, v6, :cond_4

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrLength2:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PhoneBookMultiSimOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_10
    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_11

    const/4 v6, 0x1

    invoke-static {v6}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    sput-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    :cond_11
    sget v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    const-string v6, "PhoneBookMultiSimOperation"

    const-string v7, "Failed to get strogae2 info. Sim is initializing"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    goto/16 :goto_5

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getSimType(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    const-string v1, "ril.IsCSIM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string v1, "ril.IsCSIM2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2"

    goto :goto_0

    :cond_2
    const-string v1, "ril.ICC_TYPE2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return null  simId is wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->NOT_USED_STR:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasIccCard("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return false simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrFull(II)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x1

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnrFull("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : anrIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrFull(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eq p2, v1, :cond_1

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return true  simId is wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimType(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    :cond_2
    const-string v0, "2"

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrSupported(II)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    :try_start_0
    const-string v3, "simphonebook2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_7
    :goto_1
    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    invoke-virtual {v0, v6, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v2

    :cond_8
    :goto_2
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnrFulll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : mAnrMaxIndex2["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAnrUsedIndex2["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    aget v0, v0, p1

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    aget v3, v3, p1

    if-le v0, v3, :cond_d

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFulll("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") : false max("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") used("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "PhoneBookMultiSimOperation"

    const-string v5, "RemoteException"

    invoke-static {v4, v5, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v3

    const-string v4, "PhoneBookMultiSimOperation"

    const-string v5, "SecurityException"

    invoke-static {v4, v5, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_a
    if-ne p1, v1, :cond_b

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v1

    goto/16 :goto_2

    :cond_b
    if-ne p1, v7, :cond_c

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v7

    goto/16 :goto_2

    :cond_c
    if-ne p1, v6, :cond_8

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v6

    goto/16 :goto_2

    :cond_d
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFulll("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrUsedIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method public isAnrSupported(II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isAnrSupported(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p2, v1, :cond_2

    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrSupported("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return false simId  is wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    aget v2, v2, p1

    if-lez v2, :cond_0

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrSupported("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = mAnrMaxIndex2["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mAnrMaxIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public isEmailFull(I)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isEmailFull()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v7, :cond_2

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_2
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return true simId is wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex2:I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex2:I

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex2:I

    if-le v0, v2, :cond_5

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_0

    :cond_5
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailMaxIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mEmailUsedIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0
.end method

.method public isSimDBReady(I)Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "PhoneBookMultiSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimDBReady("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimDBReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getSim2DBReady(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimDB("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Loading..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "PhoneBookMultiSimOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimDBReady("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return false simId is wrong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ril.ICC_TYPE2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    sget-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v2, :cond_3

    sput-boolean v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    sget-object v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimStatus(Ljava/lang/String;I)V

    :cond_3
    const-string v1, "PhoneBookMultiSimOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isSimEnabled(I)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_3

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    :cond_2
    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    if-eq v0, v6, :cond_6

    const-string v3, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return false <cardStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_5

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    :cond_4
    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mTelMan2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const-string v4, "gsm.sim.currentcardstatus2"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_5
    const-string v3, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimEnabled() return false simId is wrong < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    if-ne v1, v6, :cond_9

    :cond_7
    if-nez p1, :cond_8

    sput v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState:I

    :goto_2
    const-string v3, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return false < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sput v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState2:I

    goto :goto_2

    :cond_9
    if-nez p1, :cond_b

    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState:I

    if-eq v4, v1, :cond_a

    sput-boolean v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck:Z

    sput v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState:I

    :cond_a
    :goto_3
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getAdnEditable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v3, "PhoneBookMultiSimOperation"

    const-string v4, "Adn is not editable..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    sget v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState2:I

    if-eq v4, v1, :cond_a

    sput-boolean v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    sput v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mCurrentSimState2:I

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getAdn2Editable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v3, "PhoneBookMultiSimOperation"

    const-string v4, "Adn2 is not editable..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    sget-object v4, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_e

    const-string v4, "1"

    const-string v5, "ril.initPB"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v3, "PhoneBookMultiSimOperation"

    const-string v4, "isSimEnabled() not PB_INIT."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string v4, "1"

    const-string v5, "ril.initPB2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v3, "PhoneBookMultiSimOperation"

    const-string v4, "isSimEnabled() not PB2_INIT."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const-string v2, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_0
.end method

.method public isSimFull(I)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : isFirstCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   isFirstCheck2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimFull()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v8, :cond_2

    sget-boolean v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    goto :goto_0

    :cond_2
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return true simId is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    sget v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    sget v1, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    if-le v0, v1, :cond_6

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") used ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/util/Constants;->ADN2_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_6
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") used ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_0
.end method

.method public isUIMCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSimInfoChanged(Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x1

    const-string v0, "simcard_sim_id"

    const/16 v1, -0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "simcard_sim_icon"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "simcard_sim_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSimInfoChanged extra is null!! EXTRA_SIM_ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  EXTRA_SIM_ICON:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  EXTRA_SIM_NAME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_3

    sget v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSimInfoChanged simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " iconIndex:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookMultiSimOperation"

    const-string v1, "setSimInfoChanged: No Change found"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "PhoneBookMultiSimOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSimInfoChanged simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " iconIndex:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookMultiSimOperation"

    const-string v1, "setSimInfoChanged: No Change found"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    if-nez v0, :cond_7

    sput-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    :goto_1
    sget-object v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimIcon(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getSim1AccountWithDataSet()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/model/account/AccountType;->setIconRes(I)V

    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->getSimIcon(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getSim2AccountWithDataSet()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType;->setIconRes(I)V

    :cond_6
    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimInfoChanged sim1 name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim2 name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhoneBookMultiSimOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimInfoChanged sim1 icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim1Icon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim2 icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sput-object v2, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/PhoneBookMultiSimOperation;->mSim2Icon:I

    goto :goto_1
.end method
