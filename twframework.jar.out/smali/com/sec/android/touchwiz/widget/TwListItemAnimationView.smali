.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwListItemAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;
    }
.end annotation


# instance fields
.field private final TOTAL_ANIM_TIME:I

.field private firstPosition:I

.field public isMoveFlag:Z

.field private lasPosition:I

.field private listCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private loopIndex:I

.field private mAnimationCount:I

.field public mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

.field public mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

.field protected mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

.field protected mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

.field protected mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

.field protected mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

.field protected mContext:Landroid/content/Context;

.field protected mIsCheckGlobalAnimationEffect:Z

.field protected mIsWindowFocusChanged:Z

.field protected mListAdapter:Landroid/widget/ListAdapter;

.field private mStartAnimTime:J

.field protected mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

.field protected mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

.field protected mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

.field public moveView:Landroid/view/View;

.field public movedPosition:I

.field public movedYCoordinate:I

.field public moving_down:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->firstPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->lasPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private setCoordinates()V
    .locals 5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->listCoordinates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->setTop(I)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->setBottom(I)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->listCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userGetUseOverscrollEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userIsThisAnimatingForOverscrollListItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userRunningAnimationEffectForOverscrollListItem(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userRelease()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userRelease()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRelease()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRelease()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRelease()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRelease()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    :cond_5
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddLastItem()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userSetWidthMeasureSpec(I)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0

    new-instance p1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    return-void
.end method

.method public userCancelAnimationEffect()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForOverscrollListItem()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForDeleteItems()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForAddItem()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForShowHeaderAndViewOfListItem()V

    return-void
.end method

.method public userCancelAnimationEffectForAddItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userCancelAnimationEffectForAddItem()V

    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForOverscrollListItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userCancelAnimationEffectForOverscrollListItem()V

    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userCancelAnimationEffectForShowHeaderAndViewOfListItem()V

    :cond_0
    return-void
.end method

.method public userGetChildViewOnScreenByPosition(I)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userSetOnScreenWithBorderCrossedItemByIndex(I)V

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public userGetTimeIntervalAlphaEffectForAddItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userGetTimeIntervalAlphaEffectForAddItem()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalAlphaEffectForDeleteItems()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalAlphaEffectForDeleteItems()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForDeleteItems()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalTransferEffectForDeleteItems()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I

    move-result v0

    goto :goto_0
.end method

.method public userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V

    :cond_0
    return-void
.end method

.method protected userInitListView(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setDividerHeight(I)V

    return-void
.end method

.method public userIsAnimationEffect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    return v0
.end method

.method public userIsShownForShowHeaderAndViewOfListItem()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userIsShownForShowHeaderAndViewOfListItem()Z

    move-result v0

    goto :goto_0
.end method

.method public userSetOnAnimationEffectForAddItemListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    return-void
.end method

.method public userSetOnAnimationEffectForDeleteItemsListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    return-void
.end method

.method public userSetOnAnimationEffectForShowHeaderAndViewOfListItemListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    return-void
.end method

.method protected userSetOnScreenWithBorderCrossedItemByIndex(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected userSetOnScreenWithBorderCrossedItemByMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, -0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :cond_0
    if-gez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userSetOnScreenWithBorderCrossedItemByIndex(I)V

    goto :goto_1
.end method

.method public userSetTimeIntervalAlphaEffectForAddItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userSetTimeIntervalAlphaEffectForAddItem(I)V

    :cond_0
    return-void
.end method

.method public userSetTimeIntervalAlphaEffectForDeleteItems(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userSetTimeIntervalAlphaEffectForDeleteItems(I)V

    :cond_0
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForDeleteItems(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userSetTimeIntervalTransferEffectForDeleteItems(I)V

    :cond_0
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V

    :cond_0
    return-void
.end method

.method public userSetUseAnimationEffectForOverscrollListItem(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userSetUseOverscrollEffect(Z)V

    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddFirstItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddFirstItem()V

    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddItem(I)V

    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddLastItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddLastItem()V

    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForDeleteItems([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStartAnimationEffectForDeleteItems([I)V

    :cond_0
    return-void
.end method

.method public userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V

    :cond_0
    return-void
.end method

.method public userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V

    :cond_0
    return-void
.end method
