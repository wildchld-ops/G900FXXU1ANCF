.class public Lcom/sec/android/app/sbrowser/certificate/SBrowserKnoxRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBrowserKnoxRequestReceiver.java"


# static fields
.field private static INTENT_ACTION_CERTIFICATE_REMOVED:Ljava/lang/String; = null

.field private static INTENT_EXTRA_CERTIFICATE_REMOVED_SUBJECT:Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "SBrowserKnoxRequestReceiver"

.field private static final TAG:Ljava/lang/String; = "SBrowserKnoxRequestReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sec.enterprise.knox.certificate.CertificatePolicy.ACTION_CERTIFICATE_REMOVED"

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserKnoxRequestReceiver;->INTENT_ACTION_CERTIFICATE_REMOVED:Ljava/lang/String;

    const-string v0, "EXTRA_CERTIFICATE_REMOVED_SUBJECT"

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserKnoxRequestReceiver;->INTENT_EXTRA_CERTIFICATE_REMOVED_SUBJECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserKnoxRequestReceiver;->INTENT_ACTION_CERTIFICATE_REMOVED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ClearCacheData"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getCurrentActiveSBrowserMainActivityContextIdString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SBrowserKnoxRequestReceiver"

    const-string v1, "onReceive: SBrowser launched"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NeedClearCacheData"

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SBrowserKnoxRequestReceiver"

    const-string v1, "onReceive: SBrowser not launched"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NeedClearCacheData"

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
