.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OperatorBookmarksSIMReceiver.java"


# static fields
.field static final BROWSER_AUTO_SET:Ljava/lang/String; = "android.intent.action.BROWSER_AUTO_SET"

.field private static final SBROWSER_OPBOOKMARK_CONTENT_URI_TABLE:Landroid/net/Uri; = null

.field static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"


# instance fields
.field private final BROWSER_PREFERENCES_NAME:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final PREF_TAG_INIT:Ljava/lang/String;

.field private mEditRecentPreference:Landroid/content/SharedPreferences$Editor;

.field private mIsInitialized:Ljava/lang/Boolean;

.field private mRecentPreference:Landroid/content/SharedPreferences;

.field private mRes:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser.operatorbookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->SBROWSER_OPBOOKMARK_CONTENT_URI_TABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "Browser.preferences_autobookmark"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->BROWSER_PREFERENCES_NAME:Ljava/lang/String;

    const-string v0, "CSC_is_initialized"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->PREF_TAG_INIT:Ljava/lang/String;

    const-string v0, "OperatorBookmarksSIMReceiver"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "OperatorBookmarksSIMReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive runs.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Web_EnableAutoBookmarkSetBySim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Browser.preferences_autobookmark"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mRecentPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mRecentPreference:Landroid/content/SharedPreferences;

    const-string v3, "CSC_is_initialized"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mIsInitialized:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mRes:Landroid/content/ContentResolver;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BROWSER_AUTO_SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OperatorBookmarksSIMReceiver"

    const-string v3, "BROWSER_AUTO_SET "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mRecentPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mEditRecentPreference:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mEditRecentPreference:Landroid/content/SharedPreferences$Editor;

    const-string v3, "CSC_is_initialized"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mRecentPreference:Landroid/content/SharedPreferences;

    const-string v3, "mccmnc"

    const-string v4, "none"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mEditRecentPreference:Landroid/content/SharedPreferences$Editor;

    const-string v3, "mccmnc"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mEditRecentPreference:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->checkBookmarkUpdate(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarksSIMReceiver;->mIsInitialized:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OperatorBookmarksSIMReceiver"

    const-string v3, "LSM : SIM_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;->checkBookmarkUpdate(Z)V

    goto :goto_0
.end method
