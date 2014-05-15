.class public Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBrowserSmartcardStatusReceiver.java"


# static fields
.field private static INTENT_ACTION_ENABLED_SBROWSER_SMARTCARD_AUTHENTICATION:Ljava/lang/String; = null

.field private static INTENT_EXTRA_AUTHENTICATION_ENABLED:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SBrowserCacReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "edm.intent.action.smartcard.browser.authentication"

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardStatusReceiver;->INTENT_ACTION_ENABLED_SBROWSER_SMARTCARD_AUTHENTICATION:Ljava/lang/String;

    const-string v0, "edm.intent.extra.smartcard.authentication.enabled"

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardStatusReceiver;->INTENT_EXTRA_AUTHENTICATION_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "SBrowserCacReceiver"

    const-string v2, "SBrowserCacReceiverSBrowserSmartcardStatusReceiver > onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardStatusReceiver;->INTENT_ACTION_ENABLED_SBROWSER_SMARTCARD_AUTHENTICATION:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardStatusReceiver;->INTENT_EXTRA_AUTHENTICATION_ENABLED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->onSBrowserPolicyChanged(Z)V

    :cond_0
    return-void
.end method
