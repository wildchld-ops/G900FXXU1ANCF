.class Lcom/sec/android/app/sbrowser/common/NfcHandler$1;
.super Landroid/os/Handler;
.source "NfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/NfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/NfcHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/NfcHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/NfcHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/NfcHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/NfcHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mController:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mIsPrivate:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NfcHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/NfcHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/NfcHandler;->mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
