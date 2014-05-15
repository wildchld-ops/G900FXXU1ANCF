.class public Lcom/kikin/KikinContentViewPusher;
.super Ljava/lang/Object;
.source "KikinContentViewPusher.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinContentViewHandler;


# instance fields
.field private mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

.field private mParentContentView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kikin/KikinContentViewPusher;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public getMaxKikinResultsContainerRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewRectWithoutOffset()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowRectWithoutOffset()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public pushContentView(II)V
    .locals 1

    iget-object v0, p0, Lcom/kikin/KikinContentViewPusher;->mParentContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->setContentOffset(II)V

    return-void
.end method

.method public setKikinResultsViewController(Lcom/kikin/KikinResultsViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/KikinContentViewPusher;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    return-void
.end method
