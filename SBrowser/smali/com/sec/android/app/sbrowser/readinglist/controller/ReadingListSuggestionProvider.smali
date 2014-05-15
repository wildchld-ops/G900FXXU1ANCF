.class public Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;
.super Ljava/lang/Object;
.source "ReadingListSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final ReadingListSuggestionNotification:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mReadingListDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingListSuggestionsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x21

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->ReadingListSuggestionNotification:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$2;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->executeReadingListTask(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->ReadingListSuggestionNotification:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListSuggestionsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListSuggestionsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->handleReadingListSuggestionsUpdate()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->getAllReadingListData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private findMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllReadingListData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "is_deleted"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "is_read"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :try_start_1
    new-instance v8, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-direct {v8, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getReadingListDataForSuggestions(Landroid/database/Cursor;)V

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->IsDeleted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v3

    if-nez v3, :cond_0

    move-object v9, v10

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_0
    const/4 v6, 0x0

    :cond_3
    :goto_1
    return-object v9

    :catch_0
    move-exception v7

    :goto_2
    :try_start_3
    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while getting save page data - exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v7

    :goto_4
    :try_start_5
    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while getting save page data - exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_3

    :catch_4
    move-exception v7

    :goto_5
    :try_start_7
    sget-object v3, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while getting save page data - exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v7

    goto :goto_3

    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v6, 0x0

    :cond_4
    :goto_7
    throw v3

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_7
    move-exception v7

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v9, v10

    goto :goto_6

    :catch_8
    move-exception v7

    move-object v9, v10

    goto :goto_5

    :catch_9
    move-exception v7

    move-object v9, v10

    goto :goto_4

    :catch_a
    move-exception v7

    move-object v9, v10

    goto/16 :goto_2
.end method

.method private handleReadingListSuggestionsUpdate()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    const-string v1, "Received update message to update save page suggestions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->executeReadingListTask(Landroid/content/Context;)V

    return-void
.end method

.method private searchReadingList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lorg/samsung/chrome/browser/SbrURLUtilities;->getDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->findMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getRead()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addReadingListSuggestions([Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Ljava/lang/String;)[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->searchReadingList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SAVEPAGE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->nativeType()I

    move-result v3

    const/16 v4, 0x2bc

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x4

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_2

    const/4 v13, 0x1

    :goto_1
    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    check-cast v2, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-object/from16 p1, v2

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public clearReadingListSuggestions()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public deRegisterReadingListSuggestionNotification()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->ReadingListSuggestionNotification:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListSuggestionsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->mReadingListSuggestionsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->clearReadingListSuggestions()V

    return-void
.end method

.method public final executeReadingListTask(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$GetAllReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateReadingListRead(ILandroid/content/Context;)Z
    .locals 7

    sget-object v4, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v1

    sget-object v4, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update save page read exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method
