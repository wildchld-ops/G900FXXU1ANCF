.class public final Lcom/visionobjects/textwidget/d/a/e;
.super Ljava/lang/Object;
.source "StylusCoreHelper.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/f/b/a;

.field private b:Lcom/visionobjects/textwidget/f/a/b;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/f/b/a;Lcom/visionobjects/textwidget/f/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/a/e;->a:Lcom/visionobjects/textwidget/f/b/a;

    iput-object p2, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    return-void
.end method

.method public static a(Lcom/visionobjects/stylus/core/Rect;)Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Rect;->left()F

    move-result v0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Rect;->top()F

    move-result v1

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Rect;->right()F

    move-result v2

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Rect;->bottom()F

    move-result v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private a(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/textwidget/f/b;
    .locals 4

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/visionobjects/stylus/core/InkItem;->equals(Lcom/visionobjects/stylus/core/InkItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "StylusCoreHelper"

    const-string v1, "Found StylusCore stroke item without matching VOStroke object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/visionobjects/stylus/core/Candidate;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/visionobjects/stylus/core/InkItem;->createStringHolder(J)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p0, p1}, Lcom/visionobjects/stylus/core/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->segments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    const-string v1, "StylusCoreHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Filtered "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " word segments with empty labels!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method private a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v5, [Z

    new-array v8, v6, [Z

    move v4, v2

    move v1, v2

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v4}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v9

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v9}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/visionobjects/stylus/core/Segment;->equals(Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v11, v7, v4

    aput-boolean v11, v8, v3

    add-int/lit8 v0, v3, 0x1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_3

    aget-boolean v3, v7, v0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->c(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_7

    aget-boolean v0, v8, v3

    if-nez v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    move v1, v2

    :goto_5
    array-length v7, v5

    if-ge v1, v7, :cond_5

    aget-object v7, v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Lcom/visionobjects/textwidget/f/b;

    invoke-direct {v9, v7}, Lcom/visionobjects/textwidget/f/b;-><init>(Lcom/visionobjects/textwidget/f/b;)V

    aput-object v9, v5, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a/e;->a:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v1, v0, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v0, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;
    .locals 4

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/Segment;->items()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/visionobjects/stylus/core/InkItem;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/visionobjects/textwidget/f/b;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public static b(Lcom/visionobjects/stylus/core/Candidate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Candidate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    const-string v1, "StylusCoreHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Filtered "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " character segments with empty labels!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method public static c(Lcom/visionobjects/stylus/core/InkField;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/visionobjects/stylus/core/InkItem;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/visionobjects/stylus/core/InkField;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->items()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/visionobjects/stylus/core/InkItem;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static e(Lcom/visionobjects/stylus/core/InkField;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->segments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    const-string v1, "StylusCoreHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Filtered "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " word segments with empty labels!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method private f(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v2

    invoke-virtual {p1, v6}, Lcom/visionobjects/stylus/core/InkField;->tagRange(I)Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/visionobjects/stylus/core/InkRange;->substracted(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/visionobjects/stylus/core/InkRange;->intersects(Lcom/visionobjects/stylus/core/InkRange;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v4, v6}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private g(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 5

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/visionobjects/stylus/core/InkField;->tagRange(I)Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/visionobjects/stylus/core/InkRange;->intersects(Lcom/visionobjects/stylus/core/InkRange;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 5

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->a()V

    invoke-static {p1}, Lcom/visionobjects/textwidget/d/a/e;->d(Lcom/visionobjects/stylus/core/InkField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/a/e;->a:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/b;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/visionobjects/textwidget/d/a/e;->e(Lcom/visionobjects/stylus/core/InkField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    iget-object v4, p0, Lcom/visionobjects/textwidget/d/a/e;->a:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v4, v0, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/a/e;->f(Lcom/visionobjects/stylus/core/InkField;)V

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/a/e;->g(Lcom/visionobjects/stylus/core/InkField;)V

    return-void
.end method

.method public final b(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/visionobjects/textwidget/d/a/e;->d(Lcom/visionobjects/stylus/core/InkField;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v5, [Z

    new-array v8, v6, [Z

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v9}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/visionobjects/stylus/core/InkItem;->equals(Lcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    aput-boolean v11, v7, v3

    aput-boolean v11, v8, v2

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_4

    aget-boolean v3, v7, v0

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge v1, v6, :cond_6

    aget-boolean v0, v8, v1

    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/visionobjects/textwidget/d/a/e;->a:Lcom/visionobjects/textwidget/f/b/a;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/a/e;->b:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Ljava/util/List;)V

    invoke-static {p1}, Lcom/visionobjects/textwidget/d/a/e;->e(Lcom/visionobjects/stylus/core/InkField;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/d/a/e;->a(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/a/e;->f(Lcom/visionobjects/stylus/core/InkField;)V

    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/a/e;->g(Lcom/visionobjects/stylus/core/InkField;)V

    return-void
.end method
