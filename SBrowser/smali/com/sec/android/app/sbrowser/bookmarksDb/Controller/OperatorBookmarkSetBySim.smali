.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;
.super Ljava/lang/Object;
.source "OperatorBookmarkSetBySim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;
    }
.end annotation


# static fields
.field public static final PREF_OPBOOKMARK_USEREDIT:Ljava/lang/String; = "Browser.pref_opbookmark_id"

.field private static final SBROWSER_OPBOOKMARK_CONTENT_URI_TABLE:Landroid/net/Uri;


# instance fields
.field private final BROWSER_PREFERENCES_NAME:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentMccMnc:Ljava/lang/String;

.field private mCurrentNetworkName:Ljava/lang/String;

.field private mDeleteThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;

.field private mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

.field private mRes:Landroid/content/ContentResolver;

.field private mSavedMccMnc:Ljava/lang/String;

.field private mSavedRecentPreference:Landroid/content/SharedPreferences;

.field private mUpdateThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser.operatorbookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->SBROWSER_OPBOOKMARK_CONTENT_URI_TABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Browser.preferences_autobookmark"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->BROWSER_PREFERENCES_NAME:Ljava/lang/String;

    const-string v0, "OperatorBookmarkSetBySim"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mRes:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->SBROWSER_OPBOOKMARK_CONTENT_URI_TABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentNetworkName()Ljava/lang/String;
    .locals 10

    const-string v1, "none"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    const-string v7, "GeneralInfo"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    const-string v7, "NetworkInfo"

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "MCCMNC"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentMccMnc:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    const-string v9, "NetworkName"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public checkBookmarkUpdate(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mContext:Landroid/content/Context;

    const-string v2, "Browser.preferences_autobookmark"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mSavedRecentPreference:Landroid/content/SharedPreferences;

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentMccMnc:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mSavedRecentPreference:Landroid/content/SharedPreferences;

    const-string v2, "mccmnc"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mSavedMccMnc:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentMccMnc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentMccMnc:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mSavedMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mDeleteThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mDeleteThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;->setDaemon(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mDeleteThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoDeleteAllBookmarks;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;->getInstance()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mParser:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkParser;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->getCurrentNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentNetworkName:Ljava/lang/String;

    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mUpdateThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mUpdateThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->setDaemon(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mUpdateThread:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$DoUpdateBookmarks;->start()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mSavedRecentPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mccmnc"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->mCurrentMccMnc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
