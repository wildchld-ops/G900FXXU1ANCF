.class public Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
.super Ljava/lang/Object;
.source "QuickAccessUtilityController.java"


# static fields
.field private static final MAX_CONCURRENT_EXECUTORS:I = 0x1

.field private static notificationForPinnedFavicon:[[I


# instance fields
.field private final LUMINANCE_MAX_RANGE:I

.field private final LUMINANCE_MIN_RANGE:I

.field private final PINNED_FAILED:I

.field private final PINNED_SUCCESS:I

.field public final TAB_PINNED:I

.field public final TAB_UN_PINNED:I

.field private handler:Landroid/os/Handler;

.field private isUrlIconProcessPending:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUrl:Ljava/lang/String;

.field private mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

.field private final mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mPinTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterFavIconFlag:Z

.field private mRegisterTouchIconFlag:Z

.field private mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

.field private mapOfStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;",
            ">;"
        }
    .end annotation
.end field

.field private tempbyte:[B

.field private urlIndex:I

.field private url_passed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->notificationForPinnedFavicon:[[I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->notificationForPinnedFavicon:[[I

    aget-object v0, v0, v2

    const/16 v1, 0x1a

    aput v1, v0, v2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->notificationForPinnedFavicon:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x1d

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterTouchIconFlag:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterFavIconFlag:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->urlIndex:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->TAB_PINNED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->TAB_UN_PINNED:I

    const/16 v0, 0xfb

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->LUMINANCE_MAX_RANGE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->LUMINANCE_MIN_RANGE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->PINNED_SUCCESS:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->PINNED_FAILED:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlIconProcessPending:Z

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()[[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->notificationForPinnedFavicon:[[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlIconProcessPending:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlIconProcessPending:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;[B)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->identifyDominantColor([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterFavIconFlag:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterFavIconFlag:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempStorage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempStorage:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addRSSLinksToPinnedDB(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addTouchIconToPinnedDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createFavIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterTouchIconFlag:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterTouchIconFlag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrFaviconController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->urlIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->urlIndex:I

    return p1
.end method

.method private addRSSLinksToPinnedDB(Ljava/lang/String;)I
    .locals 11

    const/4 v9, 0x0

    const/4 v3, -0x1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getRSSLinkInfoSize()I

    move-result v6

    if-gtz v6, :cond_0

    move v4, v3

    :goto_0
    return v4

    :cond_0
    add-int/lit8 v2, v6, -0x1

    invoke-static {v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getRSSLinkInfo(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;

    move-result-object v8

    if-nez v8, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getRSSLinkInfo(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;

    move-result-object v8

    invoke-virtual {v8}, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;->getRssUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v6, :cond_4

    if-lez v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    :cond_2
    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getRSSLinkInfo(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;

    move-result-object v8

    if-nez v8, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getRSSLinkInfo(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;

    move-result-object v9

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore$RSSLinkInfo;->getRssUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "rsslink"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v4, v3

    goto :goto_0
.end method

.method private addTouchIconToPinnedDB(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-virtual {v3, p1}, Lorg/samsung/chrome/browser/SbrTouchiconController;->GetTouchiconData(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    if-eqz v3, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$3;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private createFavIcon(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTouchiconController;->getInstance()Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private getRssLinksFromDB(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "url"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "rsslink"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rsslink"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz v8, :cond_1

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :cond_1
    return-object v6
.end method

.method private identifyDominantColor([B)I
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_2

    array-length v6, p1

    invoke-static {p1, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v6}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getLuminance(I)D

    move-result-wide v1

    if-eq v0, v5, :cond_1

    const-wide/high16 v5, 0x4014

    cmpg-double v5, v1, v5

    if-ltz v5, :cond_0

    const-wide v5, 0x406f600000000000L

    cmpl-double v5, v1, v5

    if-lez v5, :cond_1

    :cond_0
    invoke-virtual {v4, v3, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method private updateOriginalurlView([BILandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$10;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$10;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;[BILjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected addFavIconToPinnedDB(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v3, p1}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B

    if-eqz v3, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public addPintab(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->setmUrl(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->setmTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->insertMulitiplePinnedIconToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTouchiconController;->getInstance()Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mapOfStrings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;

    goto :goto_0
.end method

.method public deletePinnedIconFromDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$9;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getDominantFavIconColor([B)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->identifyDominantColor([B)I

    move-result v0

    return v0
.end method

.method public getPintTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnailfromRedirected(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v2, -0x1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmTouchIcon()[B

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmDominantColor()I

    move-result v0

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0, v6, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->updateOriginalurlView([BILandroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    move v2, v1

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0, v6, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->updateOriginalurlView([BILandroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public insertMulitiplePinnedIconToDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isSameUrlPinned(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mCurrentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlPinned(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isUsingDefaultColor(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmDominantColor()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reorderPinnedIconToDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$8;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$8;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setCurrentUrlToBePinned(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mCurrentUrl:Ljava/lang/String;

    return-void
.end method

.method public setPintTabList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mPinTabList:Ljava/util/ArrayList;

    return-void
.end method

.method public startAddQuickAccessActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
