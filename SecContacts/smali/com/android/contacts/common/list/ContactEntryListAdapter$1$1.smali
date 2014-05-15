.class Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;
.super Landroid/view/View$DragShadowBuilder;
.source "ContactEntryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactEntryListAdapter$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/list/ContactEntryListAdapter$1;

.field final synthetic val$photoView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListAdapter$1;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;->this$1:Lcom/android/contacts/common/list/ContactEntryListAdapter$1;

    iput-object p3, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;->val$photoView:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;->val$photoView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;->val$photoView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;->val$photoView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
