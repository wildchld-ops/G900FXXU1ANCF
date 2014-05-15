.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;,
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field protected mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    return-void
.end method

.method private isTaiwanLocale()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLang()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangEndIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v0, 0xac00

    const/16 v1, 0x24c

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xac00

    sub-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x24c

    packed-switch v3, :pswitch_data_0

    const/16 v2, 0x3131

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_0
    const/16 v2, 0x3131

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x3131

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x3134

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x3137

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x3137

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x3139

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x3141

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x3142

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x3142

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x3145

    goto :goto_0

    :pswitch_a
    const/16 v2, 0x3145

    goto :goto_0

    :pswitch_b
    const/16 v2, 0x3147

    goto :goto_0

    :pswitch_c
    const/16 v2, 0x3148

    goto :goto_0

    :pswitch_d
    const/16 v2, 0x3148

    goto :goto_0

    :pswitch_e
    const/16 v2, 0x314a

    goto :goto_0

    :pswitch_f
    const/16 v2, 0x314b

    goto :goto_0

    :pswitch_10
    const/16 v2, 0x314c

    goto :goto_0

    :pswitch_11
    const/16 v2, 0x314d

    goto :goto_0

    :pswitch_12
    const/16 v2, 0x314e

    goto :goto_0

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v21

    if-nez v21, :cond_0

    const/16 v17, 0x0

    :goto_0
    return-object v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v8

    if-nez v8, :cond_1

    const-string v21, "TwAbstractIndexer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getIndexInfo() return null: mData.size() =="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, ""

    :goto_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    const/4 v3, 0x0

    const/4 v15, -0x1

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    const/16 v19, 0x0

    const/4 v14, -0x1

    const/4 v13, -0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v11, v21, v10

    const/4 v9, 0x0

    const/4 v6, 0x1

    :goto_3
    if-nez v19, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v16

    move-object/from16 v0, v16

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v19, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_4
    if-nez v12, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v22, v22, v6

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v16

    move-object/from16 v0, v16

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    move-object/from16 v0, v16

    iget-boolean v12, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v16

    move-object/from16 v0, v16

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v19, v0

    :cond_5
    if-gez v14, :cond_6

    neg-int v14, v14

    :cond_6
    if-eqz p2, :cond_7

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_c

    :cond_7
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    iput v14, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v21

    if-nez v21, :cond_9

    if-eqz v19, :cond_8

    const/4 v3, 0x1

    move v15, v14

    :cond_8
    if-nez v19, :cond_9

    if-eqz v3, :cond_9

    iput v15, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v4

    if-eqz v12, :cond_a

    if-nez v4, :cond_a

    iput v13, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    iput v14, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mLastPosition:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v6

    if-nez v6, :cond_1

    const-string v14, "TwAbstractIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getIndexInfo() return null: mData.size() =="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ge v0, v14, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_6

    const-string v2, ""

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v8, v14, v7

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v4, v14, :cond_7

    const/4 v13, 0x0

    const/4 v9, -0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v10

    iget v9, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    iget-boolean v13, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    if-gez v9, :cond_3

    neg-int v9, v9

    :cond_3
    if-eqz p2, :cond_4

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    :cond_4
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    iput-boolean v13, v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v2, p1

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 4

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "TwAbstractIndexer"

    const-string v3, "getLangbyIndex() catch exception but not error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    :cond_0
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    :goto_0
    return-object v21

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_3

    :cond_2
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    move v6, v3

    const/4 v9, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v20, p1

    move v7, v8

    const/high16 v21, -0x8000

    const/high16 v22, -0x8000

    move/from16 v0, v22

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    move/from16 v0, v21

    if-eq v0, v15, :cond_a

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    :cond_4
    :goto_1
    const/4 v10, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v3, v0, :cond_5

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v11

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_c

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    const/4 v10, 0x1

    :cond_5
    :goto_2
    add-int v21, v6, v19

    div-int/lit8 v15, v21, 0x2

    :goto_3
    if-ge v15, v6, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v21, ""

    move-object/from16 v0, v21

    if-ne v4, v0, :cond_e

    :cond_6
    if-nez v15, :cond_d

    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    invoke-virtual {v2, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_8
    if-ge v15, v3, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    :cond_9
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-lez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-le v7, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    const/high16 v21, -0x8000

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    const/high16 v21, -0x8000

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v19

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    const/high16 v21, -0x8000

    move/from16 v0, v21

    if-eq v14, v0, :cond_4

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    :cond_c
    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    const/4 v5, 0x1

    :cond_f
    if-eqz v5, :cond_14

    if-gez v5, :cond_11

    add-int/lit8 v19, v15, 0x1

    if-eqz v10, :cond_10

    if-eqz v15, :cond_7

    :cond_10
    move/from16 v0, v19

    if-lt v0, v3, :cond_13

    move v15, v3

    goto/16 :goto_4

    :cond_11
    if-eqz v10, :cond_12

    if-nez v15, :cond_12

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_12
    move v6, v15

    :cond_13
    :goto_5
    add-int v21, v19, v6

    div-int/lit8 v15, v21, 0x2

    goto/16 :goto_3

    :cond_14
    move/from16 v0, v19

    if-eq v0, v15, :cond_7

    move v6, v15

    goto :goto_5
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method public isCurrentLanguagePosition(I)Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 2

    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onBeginTransaction is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method protected onEndTransaction()V
    .locals 2

    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onEndTransaction  is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    if-eq v0, p1, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
