.class public Lcom/sec/android/app/sbrowser/common/BrowserHeadersSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserHeadersSetReceiver.java"


# static fields
.field public static final BROWSER_GET_HEADERS:Ljava/lang/String; = "android.intent.action.SPRINTEXTENSION_BROWSER_GET_HEADERS"

.field public static final BROWSER_HEADERS:Ljava/lang/String; = "android.intent.action.SPRINTEXTENSION_BROWSER_HEADERS"

.field private static final TAG:Ljava/lang/String; = "BrowserHeadersSetReceiver"


# instance fields
.field settings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/BrowserHeadersSetReceiver;->settings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserHeadersSetReceiver;->settings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    const-string v4, "BrowserHeadersSetReceiver"

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

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.SPRINTEXTENSION_BROWSER_GET_HEADERS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SPRINTEXTENSION_BROWSER_HEADERS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserHeadersSetReceiver;->settings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getUserAgentHeader()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/BrowserHeadersSetReceiver;->settings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getAcceptHeader()Ljava/lang/String;

    move-result-object v0

    const-string v4, "user_agent_header"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "accept_header"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "BrowserHeadersSetReceiver"

    const-string v5, " onReceive : Browser Headers are sent!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v4, "BrowserHeadersSetReceiver"

    const-string v5, " onReceive : Wrong intents are received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
