.class Lorg/chromium/sync/signin/AccountManagerHelper$1;
.super Landroid/os/AsyncTask;
.source "AccountManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenAsynchronously(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

.field final synthetic val$errorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$finalFuture:Landroid/accounts/AccountManagerFuture;

.field final synthetic val$numTries:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$retry:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$finalFuture:Landroid/accounts/AccountManagerFuture;

    iput-object p3, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$errorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$numTries:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    iput-object p6, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$retry:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    iput-object p7, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$account:Landroid/accounts/Account;

    iput-object p8, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$authTokenType:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$finalFuture:Landroid/accounts/AccountManagerFuture;

    iget-object v2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$errorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

    #calls: Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenInner(Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->access$100(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$errorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$numTries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    invoke-interface {v1, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;->tokenAvailable(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$retry:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    if-nez v1, :cond_2

    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iget-object v2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    iget-object v5, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$numTries:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$errorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {v0 .. v6}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$retry:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    goto :goto_0
.end method
