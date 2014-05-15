.class abstract Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
.super Ljava/lang/Object;
.source "TwHorizontalAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemAnimation"
.end annotation


# static fields
.field public static final TYPE_CUSTOM_DRAW:I = 0x1

.field public static final TYPE_MATRIX_MODIFICATION:I


# instance fields
.field private mKeepOnFinish:Z

.field private mType:I


# direct methods
.method protected constructor <init>(IZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->mType:I

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    return-void
.end method


# virtual methods
.method public abstract computeAnimation(J)V
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getRetainOnFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 0

    return-void
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->mType:I

    return v0
.end method

.method public abstract isFinished()Z
.end method
