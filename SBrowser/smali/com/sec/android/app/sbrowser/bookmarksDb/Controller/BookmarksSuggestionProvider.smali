.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;
.super Ljava/lang/Object;
.source "BookmarksSuggestionProvider.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field bookmarksMatchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field

.field private firstChar:Ljava/lang/String;

.field index:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->firstChar:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initMatchResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->firstChar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->firstChar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkSuggestions(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->firstChar:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    :cond_2
    return-void
.end method

.method private searchInMatchResult(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBookmarkSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
    .locals 13

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->initMatchResult(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->firstChar:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->searchInMatchResult(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    if-ne v0, v1, :cond_2

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->firstChar:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->BOOKMARK_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->nativeType()I

    move-result v1

    const/16 v2, 0x2bc

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->bookmarksMatchResult:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->index:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    move v9, v8

    move-object v10, v5

    move v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-object p1, v0

    goto :goto_0
.end method
