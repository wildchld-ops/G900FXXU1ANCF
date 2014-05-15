.class final Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;
.super Lcom/google/common/collect/TreeMultiset$MultisetModifier;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConditionalSetCountModifier"
.end annotation


# instance fields
.field private final expectedCount:I

.field private final setCount:I

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->this$0:Lcom/google/common/collect/TreeMultiset;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/TreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$1;)V

    if-ltz p3, :cond_0

    move v2, v0

    :goto_0
    if-ltz p2, :cond_1

    :goto_1
    and-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->expectedCount:I

    iput p3, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->setCount:I

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;IILcom/google/common/collect/TreeMultiset$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;-><init>(Lcom/google/common/collect/TreeMultiset;II)V

    return-void
.end method


# virtual methods
.method newCount(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->expectedCount:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->setCount:I

    :cond_0
    return p1
.end method
