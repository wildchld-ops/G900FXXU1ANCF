.class public Lcom/android/dialer/BackScrollManager;
.super Ljava/lang/Object;
.source "BackScrollManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    }
.end annotation


# instance fields
.field private mAppearAnimation:Landroid/view/animation/Animation;

.field private mDisappearAnimation:Landroid/view/animation/Animation;

.field private final mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;

.field private mIsSystemUIAppear:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final mSystemUIBackgroundView:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z

    new-instance v0, Lcom/android/dialer/BackScrollManager$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/BackScrollManager$1;-><init>(Lcom/android/dialer/BackScrollManager;)V

    iput-object v0, p0, Lcom/android/dialer/BackScrollManager;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    iput-object p2, p0, Lcom/android/dialer/BackScrollManager;->mListView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/BackScrollManager;)Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/BackScrollManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/dialer/BackScrollManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/dialer/BackScrollManager;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/BackScrollManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/BackScrollManager;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mAppearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private bind()V
    .locals 5

    const-wide/16 v3, 0x12c

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/dialer/BackScrollManager;->mAppearAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mAppearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/dialer/BackScrollManager;->mDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/BackScrollManager;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public static bind(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/dialer/BackScrollManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/BackScrollManager;-><init>(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;Landroid/view/View;)V

    invoke-direct {v0}, Lcom/android/dialer/BackScrollManager;->bind()V

    return-void
.end method
