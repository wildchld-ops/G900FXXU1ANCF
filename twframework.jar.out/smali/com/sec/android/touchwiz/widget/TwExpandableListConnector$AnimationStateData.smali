.class Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationStateData"
.end annotation


# static fields
.field static final ANIMATION_ABORTED:I = 0x4

.field static final ANIMATION_ABORT_TRIGGERED:I = 0x3

.field static final ANIMATION_ADDED:I = 0x7

.field static final ANIMATION_FINISHED:I = 0x2

.field static final ANIMATION_INVALID:I = -0x1

.field static final ANIMATION_IN_PROGRESS:I = 0x1

.field static final ANIMATION_POST_SCROLL:I = 0x6

.field static final ANIMATION_PRE_SCROLL:I = 0x5

.field static final ANIMATION_TRIGGERED:I = 0x0

.field static final ANIMATION_TYPE_COLLAPSE:I = 0x1

.field static final ANIMATION_TYPE_EXPAND:I = 0x0

.field static final ANIMATION_TYPE_INVALID:I = -0x1


# instance fields
.field animationState:I

.field animationType:I

.field collapsingGroup:I

.field expandingGroup:I

.field firstItem:I

.field fullyExpandedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field initiallyFullyExpandedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field isAlphaAnimationOver:Z

.field isExpandOrCollapseAll:Z

.field isIndicatorAnimationOver:Z

.field isTranslationOver:Z

.field lastItem:I

.field numberOfAnimationItems:I

.field numberOfItems:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field visibleGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isAlphaAnimationOver:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->reset()V

    return-void
.end method


# virtual methods
.method finishAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->reset()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetChanged()V

    return-void
.end method

.method getCurrentAnimationState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    return v0
.end method

.method printState()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "ANIMATION_INVALID"

    goto :goto_0

    :pswitch_1
    const-string v0, "ANIMATION_TRIGGERED"

    goto :goto_0

    :pswitch_2
    const-string v0, "ANIMATION_IN_PROGRESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "ANIMATION_FINISHED"

    goto :goto_0

    :pswitch_4
    const-string v0, "ANIMATION_ABORT_TRIGGERED"

    goto :goto_0

    :pswitch_5
    const-string v0, "ANIMATION_ABORTED"

    goto :goto_0

    :pswitch_6
    const-string v0, "ANIMATION_PRE_SCROLL"

    goto :goto_0

    :pswitch_7
    const-string v0, "ANIMATION_POST_SCROLL"

    goto :goto_0

    :pswitch_8
    const-string v0, "ANIMATION_ADDED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationType:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->expandingGroup:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->collapsingGroup:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->numberOfItems:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->numberOfAnimationItems:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->lastItem:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->firstItem:I

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isAlphaAnimationOver:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    return-void
.end method
