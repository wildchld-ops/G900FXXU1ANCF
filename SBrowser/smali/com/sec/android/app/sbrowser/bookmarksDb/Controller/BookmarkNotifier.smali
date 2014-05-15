.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;
.super Ljava/lang/Object;
.source "BookmarkNotifier.java"


# static fields
.field private static mBookmarkNotifier:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;


# instance fields
.field private mBookmarkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkNotifier:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkAdded(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkUpdated(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->operatorBookmarksAdded()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkURLThumbnailUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->toolbarBookmarkDeleted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarksDeleted(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarksReordered(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarksMoved(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->samsungAccountChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkEditChangedParent(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkSyncCompleted()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkClearUndoPopups()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->bookmarkUndoCompleted(Ljava/lang/Long;)V

    return-void
.end method

.method private bookmarkAdded(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x14

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkClearUndoPopups()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkEditChangedParent(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x17

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkSyncCompleted()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkURLThumbnailUpdated(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x1e

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkUndoCompleted(Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x1c

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkUpdated(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x16

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksDeleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x15

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksMoved(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x19

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksReordered(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x18

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkNotifier:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkNotifier:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkNotifier:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private operatorBookmarksAdded()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private samsungAccountChanged()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toolbarBookmarkDeleted(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;

    const/16 v2, 0x1f

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;->onChange(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->mBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
