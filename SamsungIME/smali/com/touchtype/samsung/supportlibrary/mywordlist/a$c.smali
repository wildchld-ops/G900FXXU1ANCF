.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;

.field private b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private c:I

.field private d:I

.field private e:Lcom/touchtype_fluency/Session;


# direct methods
.method private constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;IILcom/touchtype_fluency/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;

    iput-object p3, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput p4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:I

    iput p5, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->d:I

    iput-object p6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->e:Lcom/touchtype_fluency/Session;

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;IILcom/touchtype_fluency/Session;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;IILcom/touchtype_fluency/Session;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Constructing word list"

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x0

    const/16 v5, 0x64

    invoke-interface {v2, v3, v5, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingProgress(IILjava/util/List;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->e:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Trainer;->getTermCounts()Ljava/util/Map;

    move-result-object v2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingComplete(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v13

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Constructing word list from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dynamic model terms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v5, 0x5

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingProgress(IILjava/util/List;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v6, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-direct {v6, v3, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingComplete(Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/16 v3, 0xa

    const/16 v5, 0x64

    invoke-interface {v2, v3, v5, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingProgress(IILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->a(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;)V

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingComplete(Z)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/16 v3, 0xf

    const/16 v5, 0x64

    invoke-interface {v2, v3, v5, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingProgress(IILjava/util/List;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:I

    if-le v13, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:I

    sub-int v2, v13, v2

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->d:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->e:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v14

    const/4 v2, 0x0

    move v9, v2

    move-wide v5, v10

    :goto_3
    if-ge v9, v3, :cond_9

    if-lez v9, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:I

    add-int/lit8 v4, v9, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->d:I

    mul-int/2addr v4, v8

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->d:I

    add-int/2addr v4, v2

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_5
    if-ge v8, v4, :cond_6

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->getTerm()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b()Lcom/touchtype_fluency/TagSelector;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:I

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingComplete(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x1

    if-le v3, v2, :cond_8

    const-wide v16, 0x4055400000000000L

    int-to-double v0, v9

    move-wide/from16 v18, v0

    add-int/lit8 v2, v3, -0x1

    int-to-double v0, v2

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    add-int/lit8 v2, v2, 0xf

    move v8, v2

    :goto_6
    if-nez v7, :cond_a

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/16 v7, 0x64

    invoke-interface {v6, v8, v7, v15}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingProgress(IILjava/util/List;)V

    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v7, v2

    move-wide/from16 v22, v4

    move-wide/from16 v5, v22

    goto/16 :goto_3

    :cond_8
    const/16 v2, 0x64

    move v8, v2

    goto :goto_6

    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Time to construct word list: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v10

    long-to-float v2, v2

    const v3, 0x49742400

    div-float/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Time until first onProgress call: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v5, v10

    long-to-float v4, v4

    const v5, 0x49742400

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingComplete(Z)V

    goto/16 :goto_0

    :cond_a
    move v2, v7

    move-wide/from16 v22, v5

    move-wide/from16 v4, v22

    goto :goto_7

    :cond_b
    move v3, v2

    goto/16 :goto_2
.end method
