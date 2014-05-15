.class public abstract Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;
.super Ljava/lang/Object;
.source "AbstractKeyboardTraceLine.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/IKeyboardTraceLine;


# instance fields
.field protected mPath:Landroid/graphics/Path;

.field protected mTracePaint:Landroid/graphics/Paint;

.field protected mTracePenThickness:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract endDrawTraceLine()V
.end method

.method public getPathBound()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v0, v0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v0, v0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract moveDrawTraceLine(JJ)V
.end method

.method public abstract onDrawTraceLine(Landroid/graphics/Canvas;)V
.end method

.method public abstract startDrawTraceLine(JJ)V
.end method
