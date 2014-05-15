.class public Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "USBATComandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ATT_RESPONSE:Ljava/lang/String; = "android.intent.action.BCS_RESPONSE"

.field private static final ATT_COMMAND_BOOKMARK_COUNT:Ljava/lang/String; = "AT+CWAP=BM,NR"

.field private static final ATT_COMMAND_BOOKMARK_SIZE:Ljava/lang/String; = "AT+CWAP=BM,SZ"

.field private static final ATT_COMMAND_BROWSER:Ljava/lang/String; = "AT+CWAP"

.field private static final ATT_COMMAND_CACHE_SIZE:Ljava/lang/String; = "AT+CWAP=CH,SZ"

.field private static final ATT_COMMAND_COOKIE_COUNT:Ljava/lang/String; = "AT+CWAP=CK,NR"

.field private static final ATT_COMMAND_COOKIE_SIZE:Ljava/lang/String; = "AT+CWAP=CK,SZ"

.field public static final RESPONSE_ATT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "USBATComandReceiver"

.field public static final USBATCOMMAND_REQUEST:Ljava/lang/String; = "android.intent.action.BCS_REQUEST"


# instance fields
.field mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Landroid/content/Context;

.field private mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field public final mPrivateHandler:Landroid/os/Handler;

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;-><init>(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPrivateHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "USBATComandReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive runs.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    :goto_0
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getCurrentActiveSBrowserMainActivityContextIdString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMainActivityContextId:Ljava/lang/String;

    :cond_0
    move-object v3, p1

    if-nez v1, :cond_3

    const-string v4, "USBATComandReceiver"

    const-string v5, "onReceive return - data is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "command"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v4, "AT+CWAP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMobileApplicationContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    const-string v4, "AT+CWAP=BM,NR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    new-instance v4, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$1;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;Landroid/content/Context;)V

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    const-string v4, "USBATComandReceiver"

    const-string v5, "AT+CWAP=BM,NR fail mChromeView is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v4, "AT+CWAP=BM,SZ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    new-instance v4, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$2;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;Landroid/content/Context;)V

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_6
    const-string v4, "USBATComandReceiver"

    const-string v5, "AT+CWAP=BM,SZ fail mChromeView is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v4, "AT+CWAP=CK,NR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "USBATComandReceiver"

    const-string v5, "AT+CWAP=CK,NR"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getCurrentCookieCount(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_1

    :cond_8
    const-string v4, "AT+CWAP=CK,SZ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "USBATComandReceiver"

    const-string v5, "AT+CWAP=CK,SZ"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getCurrentCookieCount(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto/16 :goto_1

    :cond_9
    const-string v4, "AT+CWAP=CH,SZ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "USBATComandReceiver"

    const-string v5, "AT+CWAP=CH,SZ"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getCurrentCacheSize(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto/16 :goto_1

    :cond_a
    const-string v4, "USBATComandReceiver"

    const-string v5, " ** onReceive : unknown command are received.."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "response"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
