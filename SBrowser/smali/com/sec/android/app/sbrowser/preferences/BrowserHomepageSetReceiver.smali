.class public Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserHomepageSetReceiver.java"


# static fields
.field public static final CHAMELEON_SET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.CHAMELEON_BROWSER_SET_HOMEPAGE"

.field public static final CSC_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.CSC_BROWSER_HOMEPAGE"

.field public static final CSC_SET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

.field public static final OMADM_GET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.OMADM_BROWSER_GET_HOMEPAGE"

.field public static final OMADM_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.OMADM_BROWSER_HOMEPAGE"

.field public static final OMADM_SET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.OMADM_BROWSER_SET_HOMEPAGE"

.field public static final STK_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.STK_BROWSER_HOMEPAGE"

.field public static final STK_SET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.STK_BROWSER_GET_HOMEPAGE"

.field public static mReceivedUrl:Ljava/lang/String;


# instance fields
.field tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->mReceivedUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v6, "Browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive runs.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "android.intent.action.OMADM_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.CHAMELEON_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_0
    const-string v6, "homepage"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : URL  is received.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    :goto_0
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : URL  is set to homepage.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v5, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->mReceivedUrl:Ljava/lang/String;

    const-string v6, "android.intent.action.CHAMELEON_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomepageByChameleon(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setFactoryResetHomeUrl(Ljava/lang/String;)V

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_HOMEPAGE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "homepage"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : CurrentUrl is sent  is sent.."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "https:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    const-string v6, "http:/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "https:/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const-string v6, "/"

    const-string v7, "//"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_7
    const-string v6, ":"

    const-string v7, "://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_8
    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_9
    const-string v6, "android.intent.action.OMADM_BROWSER_GET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.OMADM_BROWSER_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "homepage"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_a
    const-string v6, "android.intent.action.STK_BROWSER_GET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.STK_BROWSER_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "homepage"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    const-string v6, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/BrowserHomepageSetReceiver;->tmpSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resetPreferenceData(Z)V

    goto/16 :goto_1

    :cond_c
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : Wrong intents are received.."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
