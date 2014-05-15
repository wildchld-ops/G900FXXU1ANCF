.class public Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;
.super Ljava/lang/Object;
.source "SbrAutocompleteBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$SBrowserSuggestionComparator;,
        Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MAX_DEFAULT_SUGGESTION_COUNT:I = 0x5

.field private static final MAX_VOICE_SUGGESTION_COUNT:I = 0x3


# instance fields
.field private mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

.field private mListener:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;

.field private mNativeSbrAutocompleteBridge:I

.field private mQuery:Ljava/lang/String;

.field private mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

.field private mVoiceSuggestionProvider:Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mVoiceSuggestionProvider:Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeInit(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nativeInit() failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mListener:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    :cond_1
    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method public static native nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
.end method

.method private native nativeStop(IZ)V
.end method

.method private reorderSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    aget-object v2, p1, v4

    const/4 v4, 0x1

    array-length v5, p1

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-object p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$SBrowserSuggestionComparator;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$SBrowserSuggestionComparator;-><init>(Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    check-cast v4, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    return-object v4

    :catch_0
    move-exception v1

    sget-object v4, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while doing reorder suggestion exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while doing reorder suggestion exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v4, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while doing reorder suggestion exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->deRegisterReadingListSuggestionNotification()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->destroy()V

    return-void
.end method

.method public getReadingListSuggestionProvider()Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    return-object v0
.end method

.method protected native nativeInit(Lorg/chromium/content/browser/ContentViewCore;)I
.end method

.method public onSuggestionsReceived([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNativeUnchecked;
    .end annotation

    const/4 v1, 0x5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mVoiceSuggestionProvider:Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->addVoiceSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;I)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->addReadingListSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;->addBookmarkSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object p1

    :cond_3
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->reorderSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object p1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mListener:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$OnSuggestionsReceivedListener;->onSuggestionsReceived([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVoiceResults(Landroid/os/Bundle;)Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mVoiceSuggestionProvider:Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->setVoiceResultsFromIntentBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mVoiceSuggestionProvider:Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->getResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider$VoiceResult;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfile(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->stop(Z)V

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeInit(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mReadingListSuggestionProvider:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mBookmarksSuggestionProvider:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarksSuggestionProvider;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    goto :goto_0
.end method

.method public start(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Z)V
    .locals 9

    const/4 v6, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mQuery:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeInit(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move v5, p3

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mVoiceSuggestionProvider:Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/VoiceSuggestionProvider;->clearVoiceSearchResults()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->mNativeSbrAutocompleteBridge:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;->nativeStop(IZ)V

    :cond_1
    return-void
.end method
