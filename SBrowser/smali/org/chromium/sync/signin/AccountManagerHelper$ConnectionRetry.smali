.class Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/sync/signin/AccountManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRetry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mCallback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

.field private final mErrorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTokenType:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mCallback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    iput-object p5, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mErrorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 8

    const/4 v1, 0x3

    sget-boolean v0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTokenType:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mCallback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    iget-object v5, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mErrorEncountered:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v7, p0

    #calls: Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenAsynchronously(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V
    invoke-static/range {v0 .. v7}, Lorg/chromium/sync/signin/AccountManagerHelper;->access$000(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V

    goto :goto_0
.end method
