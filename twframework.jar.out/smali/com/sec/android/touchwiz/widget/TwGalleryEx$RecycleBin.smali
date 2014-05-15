.class Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
.super Ljava/lang/Object;
.source "TwGalleryEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGalleryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveHeap:[Landroid/view/View;

.field private mFirstActivePosition:I

.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mFirstActivePosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->clear()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->fillActiveViews(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->put(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->scrapActiveViews()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->get()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private add(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private clear()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    const/4 v5, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private fillActiveViews(II)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    array-length v3, v3

    if-ge v3, p1, :cond_0

    new-array v3, p1, [Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    :cond_0
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mFirstActivePosition:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private get()Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method private get(I)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-object v0
.end method

.method private getActiveView(I)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    aput-object v3, v0, v1

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method private pruneScrapViews()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    array-length v2, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int v0, v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    const/4 v6, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v5, v4, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private put(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private scrapActiveViews()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->mActiveHeap:[Landroid/view/View;

    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aput-object v4, v0, v2

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->pruneScrapViews()V

    return-void
.end method
