.class public final Lcom/visionobjects/textwidget/d/a/d;
.super Ljava/lang/Object;
.source "SegmentFactory.java"


# direct methods
.method public static a(Lcom/visionobjects/stylus/core/Segment;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/d;->a(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private static a(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/visionobjects/textwidget/g/a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xe33

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/Segment;
    .locals 10

    new-instance v2, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v2}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->baseline()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/Segment;->setBaseline(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->baselineSkew()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/Segment;->setBaselineSkew(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->midlineShift()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/Segment;->setMidlineShift(F)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v3

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Candidate;

    invoke-virtual {v0, v3}, Lcom/visionobjects/stylus/core/Candidate;->equals(Lcom/visionobjects/stylus/core/Candidate;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v5, Lcom/visionobjects/stylus/core/Candidate;

    invoke-direct {v5}, Lcom/visionobjects/stylus/core/Candidate;-><init>()V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->type()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/Candidate;->setType(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->flags()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/Candidate;->setFlags(I)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->normalizedRecognitionScore()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->resemblanceScore()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/Candidate;->setResemblanceScore(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/d;->a(Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    const-string v1, "\u0e4d\u0e32"

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v7

    new-instance v8, Lcom/visionobjects/stylus/core/Candidate;

    invoke-direct {v8}, Lcom/visionobjects/stylus/core/Candidate;-><init>()V

    invoke-virtual {v7}, Lcom/visionobjects/stylus/core/Candidate;->type()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/stylus/core/Candidate;->setType(I)V

    invoke-virtual {v7}, Lcom/visionobjects/stylus/core/Candidate;->flags()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/stylus/core/Candidate;->setFlags(I)V

    invoke-virtual {v7}, Lcom/visionobjects/stylus/core/Candidate;->normalizedRecognitionScore()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/stylus/core/Candidate;->setNormalizedRecognitionScore(F)V

    invoke-virtual {v7}, Lcom/visionobjects/stylus/core/Candidate;->resemblanceScore()F

    move-result v7

    invoke-virtual {v8, v7}, Lcom/visionobjects/stylus/core/Candidate;->setResemblanceScore(F)V

    invoke-virtual {v8, v1}, Lcom/visionobjects/stylus/core/Candidate;->setLabel(Ljava/lang/String;)V

    new-instance v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->baseline()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/visionobjects/stylus/core/Segment;->setBaseline(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->baselineSkew()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/visionobjects/stylus/core/Segment;->setBaselineSkew(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->midlineShift()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/visionobjects/stylus/core/Segment;->setMidlineShift(F)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v8}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->selectLastCandidate()Z

    :goto_2
    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/Candidate;->append(Lcom/visionobjects/stylus/core/Segment;)V

    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v5}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Segment;->selectedIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/Segment;->select(I)Z

    return-object v2
.end method
