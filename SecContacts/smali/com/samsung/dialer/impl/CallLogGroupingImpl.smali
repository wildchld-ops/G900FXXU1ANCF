.class public Lcom/samsung/dialer/impl/CallLogGroupingImpl;
.super Ljava/lang/Object;
.source "CallLogGroupingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;
    }
.end annotation


# instance fields
.field private final CALL:I

.field private final MESSAGE:I

.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final VOICEMAIL:I

.field private groupCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mGroupCreator:Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;

.field public seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public strSeparatorArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->CALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->MESSAGE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->VOICEMAIL:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->NOR_INT:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->SEP_INT:I

    iput-object v1, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->strSeparatorArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCountList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mGroupCreator:Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;

    return-void
.end method

.method private equalPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p6, :cond_2

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;Z)V
    .locals 37

    const-string v3, "CallLogGroupingImpl"

    const-string v35, "******** addGroups ********"

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const-string v3, "CallLogGroupingImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "cursor.getCount() "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, ""

    const-string v16, ""

    const/4 v11, 0x0

    const/16 v30, 0x0

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->seperatorIDList:Ljava/util/ArrayList;

    add-int/lit8 v3, v13, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCountList:Ljava/util/ArrayList;

    const-string v3, "CallLogGroupingImpl"

    const-string v35, "init groupCount"

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v17, 0x1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v19, v26

    const/16 v25, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sparse-switch v26, :sswitch_data_0

    :goto_1
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static {}, Lcom/samsung/dialer/util/CallLogUtil;->setSystemTime()V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v35, "date_format"

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/dialer/util/CallLogUtil;->mDateFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v24

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v35, 0x37

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->strSeparatorArray:[Ljava/lang/String;

    aput-object v24, v3, v30

    const-string v3, "CallLogGroupingImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "sepCount: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", firstDateFormat : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    add-int/lit8 v30, v30, 0x1

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14, v15}, Lcom/samsung/dialer/util/CallLogUtil;->sameDate(JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v35, 0xa

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->strSeparatorArray:[Ljava/lang/String;

    const-string v35, ""

    aput-object v35, v3, v30

    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    sparse-switch v19, :sswitch_data_1

    :goto_4
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v3, "CallLogGroupingImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "firstNumber : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", currentNumber : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallLogGroupingImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "firstLogGroup : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", currentLogGroup : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->equalPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v27, 0x1

    :goto_5
    const/16 v29, 0x1

    if-nez v28, :cond_9

    const/16 v31, 0x0

    :goto_6
    if-eqz v31, :cond_19

    if-nez p2, :cond_19

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_0
    const/16 v25, 0x1

    goto/16 :goto_1

    :sswitch_1
    const/16 v25, 0x3

    goto/16 :goto_1

    :sswitch_2
    const/16 v25, 0x2

    goto/16 :goto_1

    :cond_6
    const-string v3, "CallLogGroupingImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "currentDateFormat : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v14, v15}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v35, 0x37

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->strSeparatorArray:[Ljava/lang/String;

    aput-object v16, v3, v30

    goto/16 :goto_3

    :sswitch_3
    const/16 v18, 0x1

    goto/16 :goto_4

    :sswitch_4
    const/16 v18, 0x3

    goto/16 :goto_4

    :sswitch_5
    const/16 v18, 0x2

    goto/16 :goto_4

    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_5

    :cond_9
    if-nez v11, :cond_a

    const/16 v31, 0x0

    goto/16 :goto_6

    :cond_a
    if-nez v27, :cond_b

    const/16 v31, 0x0

    goto/16 :goto_6

    :cond_b
    if-nez v29, :cond_c

    const/16 v31, 0x0

    goto/16 :goto_6

    :cond_c
    const/4 v3, 0x2

    move/from16 v0, v25

    if-ne v0, v3, :cond_f

    const/16 v3, 0x12c

    move/from16 v0, v26

    if-eq v0, v3, :cond_d

    const/16 v3, 0xc8

    move/from16 v0, v26

    if-ne v0, v3, :cond_e

    :cond_d
    const/16 v31, 0x1

    :goto_7
    goto/16 :goto_6

    :cond_e
    const/16 v31, 0x0

    goto :goto_7

    :cond_f
    const/4 v3, 0x4

    move/from16 v0, v21

    if-ne v0, v3, :cond_10

    const/16 v31, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_12

    const/4 v3, 0x3

    if-ne v12, v3, :cond_11

    const/16 v31, 0x1

    :goto_8
    goto/16 :goto_6

    :cond_11
    const/16 v31, 0x0

    goto :goto_8

    :cond_12
    const/4 v3, 0x5

    move/from16 v0, v21

    if-ne v0, v3, :cond_14

    const/4 v3, 0x5

    if-ne v12, v3, :cond_13

    const/16 v31, 0x1

    :goto_9
    goto/16 :goto_6

    :cond_13
    const/16 v31, 0x0

    goto :goto_9

    :cond_14
    const/4 v3, 0x6

    move/from16 v0, v21

    if-ne v0, v3, :cond_16

    const/4 v3, 0x6

    if-ne v12, v3, :cond_15

    const/16 v31, 0x1

    :goto_a
    goto/16 :goto_6

    :cond_15
    const/16 v31, 0x0

    goto :goto_a

    :cond_16
    const/4 v3, 0x1

    if-eq v12, v3, :cond_17

    const/4 v3, 0x2

    if-ne v12, v3, :cond_18

    :cond_17
    const/16 v31, 0x1

    :goto_b
    goto/16 :goto_6

    :cond_18
    const/16 v31, 0x0

    goto :goto_b

    :cond_19
    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mGroupCreator:Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v35

    sub-int v35, v35, v17

    move/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v3, v0, v1}, Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;->addGroupImpl(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    move/from16 v0, v17

    new-array v10, v0, [I

    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCountList:Ljava/util/ArrayList;

    new-instance v35, Lcom/samsung/dialer/calllog/GroupCount;

    const/16 v36, 0x0

    aget v36, v10, v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/dialer/calllog/GroupCount;-><init>(I[II)V

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/16 v17, 0x1

    move/from16 v21, v12

    move/from16 v26, v19

    move-object/from16 v32, v4

    move-object v4, v7

    move-object/from16 v7, v32

    move-object/from16 v33, v5

    move-object v5, v8

    move-object/from16 v8, v33

    move-object/from16 v34, v6

    move-object v6, v9

    move-object/from16 v9, v34

    move-object/from16 v24, v16

    move-wide/from16 v22, v14

    move/from16 v25, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->mGroupCreator:Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;

    sub-int v35, v13, v17

    move/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v3, v0, v1}, Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;->addGroupImpl(II)V

    const-string v3, "CallLogGroupingImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "groupCount :"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move/from16 v0, v17

    new-array v10, v0, [I

    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCount:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCountList:Ljava/util/ArrayList;

    new-instance v35, Lcom/samsung/dialer/calllog/GroupCount;

    const/16 v36, 0x0

    aget v36, v10, v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/dialer/calllog/GroupCount;-><init>(I[II)V

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_3
        0x78 -> :sswitch_3
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_5
        0x1f4 -> :sswitch_3
        0x1fe -> :sswitch_3
        0x320 -> :sswitch_3
        0x384 -> :sswitch_4
        0x3e8 -> :sswitch_3
        0x44c -> :sswitch_3
    .end sparse-switch
.end method
