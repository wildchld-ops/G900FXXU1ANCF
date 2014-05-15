.class Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SbrSelectPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectPopupArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final POPUP_ITEM_TYPE_DISABLED:I = 0x1

.field static final POPUP_ITEM_TYPE_ENABLED:I = 0x2

.field static final POPUP_ITEM_TYPE_GROUP:I


# instance fields
.field private mAreAllItemsEnabled:Z

.field private mItemEnabled:[I


# direct methods
.method public constructor <init>([Ljava/lang/String;[IZ)V
    .locals 6

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$000()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz p3, :cond_1

    const v4, 0x7f0400c0

    :goto_0
    invoke-direct {p0, v5, v4, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mItemEnabled:[I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mAreAllItemsEnabled:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mItemEnabled:[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mAreAllItemsEnabled:Z

    :cond_0
    return-void

    :cond_1
    const v4, 0x7f0400c1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mAreAllItemsEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, v1, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mItemEnabled:[I

    aget v0, v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mItemEnabled:[I

    aget v0, v0, p1

    if-nez v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    move-object v0, p2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;->mItemEnabled:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
