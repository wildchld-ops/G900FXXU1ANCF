.class public Lcom/sec/android/app/sbrowser/common/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field static final GET_PRIVATE_BROWSING_STATE_MSG:I = 0x64

.field static final TAG:Ljava/lang/String; = "BrowserNfcHandler"


# instance fields
.field final mController:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field final mHandler:Landroid/os/Handler;

.field mIsPrivate:Z

.field mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/NfcHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/NfcHandler$1;-><init>(Lcom/sec/android/app/sbrowser/common/NfcHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mController:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-void
.end method

.method public static register(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/NfcHandler;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/common/NfcHandler;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static unregister(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/NfcHandler;->register(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mController:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mIsPrivate:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v3, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "BrowserNfcHandler"

    const-string v4, "IllegalArgumentException creating URI NdefRecord"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
