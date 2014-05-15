.class Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Group"
.end annotation


# static fields
.field private static final DEBUG_GROUP:Z = false

.field private static final ROT_DURATION:F = 300.0f


# instance fields
.field animatingChildren:I

.field animationOffsetForChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field animationStartOffsetForGroup:F

.field dividerHeight:I

.field groupEndTranslationPosition:I

.field groupId:I

.field groupStartTranslationPosition:I

.field hasLastAnimatingItem:Z

.field isExpandingOrCollapsing:Z

.field isTranslating:Z

.field isVisible:Z

.field lastAnimatingItem:I

.field lastAnimationCompletionTime:F

.field listHeight:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field totalChildren:I

.field translationSpeed:F

.field viewHeight:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;IZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->totalChildren:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationStartOffsetForGroup:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    return-void
.end method


# virtual methods
.method computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V
    .locals 11

    const/high16 v10, 0x4396

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    :goto_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    sub-float v6, v4, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    const/4 v8, -0x1

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-nez v8, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    mul-float v4, v8, v9

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v8

    mul-float/2addr v8, v6

    float-to-int v1, v8

    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-ge v3, v8, :cond_0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationType:I

    if-nez v8, :cond_5

    mul-int v8, v3, p2

    div-int/lit8 v9, p2, 0x2

    add-int v2, v8, v9

    :goto_3
    const/4 v5, 0x0

    if-lt v1, v2, :cond_7

    int-to-float v8, v2

    div-float/2addr v8, v6

    float-to-int v5, v8

    :goto_4
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v10

    cmpg-float v8, v9, v8

    if-gez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v10

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v8, v8, -0x2

    sub-int/2addr v8, v3

    if-ltz v8, :cond_6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v8, v8, -0x2

    sub-int/2addr v8, v3

    mul-int/2addr v8, p2

    div-int/lit8 v9, p2, 0x2

    add-int v2, v8, v9

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    sub-int v0, v2, v1

    int-to-float v8, v0

    div-float v7, v8, v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v8

    add-float/2addr v8, v7

    float-to-int v5, v8

    goto :goto_4
.end method

.method configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V
    .locals 2

    if-nez p1, :cond_0

    sget v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    sget v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    goto :goto_0
.end method

.method dump()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getRotationDuration()F
    .locals 1

    const/high16 v0, 0x4396

    return v0
.end method

.method getRotationOffsetForChild(I)F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animationOffsetForChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method getTranslationDuration()F
    .locals 4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    sget v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->translationSpeed:F

    div-float v1, v2, v3

    return v1
.end method

.method getTranslationDurationForChild(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v0

    goto :goto_0
.end method

.method getTranslationEndPositionForChild(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_0
.end method

.method getTranslationOffsetForChild(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getTranslationStartPositionForChild(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    goto :goto_0
.end method
