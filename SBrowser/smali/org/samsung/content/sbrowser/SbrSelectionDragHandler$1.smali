.class final Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$1;
.super Ljava/lang/Object;
.source "SbrSelectionDragHandler.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->access$102(Z)Z

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    const-string v1, "SbrSelectionDragHandler"

    const-string v2, "onDrag: ACTION_DRAG_ENDED delivered"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->access$000()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->access$000()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->access$002(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
