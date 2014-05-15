.class public Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;
.super Ljava/lang/Object;
.source "SuggestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionItem"
.end annotation


# instance fields
.field private mMatchedQuery:Ljava/lang/String;

.field private mSuggestion:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mSuggestion:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mMatchedQuery:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mMatchedQuery:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mMatchedQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mSuggestion:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mSuggestion:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getMatchedQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mMatchedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mSuggestion:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mMatchedQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mSuggestion:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setMatchedQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->mMatchedQuery:Ljava/lang/String;

    return-void
.end method
