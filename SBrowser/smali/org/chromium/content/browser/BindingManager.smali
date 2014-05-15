.class Lorg/chromium/content/browser/BindingManager;
.super Ljava/lang/Object;
.source "BindingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BindingManager$ManagedConnection;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DETACH_AS_ACTIVE_HIGH_END_DELAY_MILLIS:J = 0x3e8L

.field private static final REMOVE_INITIAL_BINDING_DELAY_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "BindingManager"


# instance fields
.field private mBoundForBackgroundPeriodPid:I

.field private final mIsLowMemoryDevice:Z

.field private mLastOomPid:I

.field private final mLastOomPidLock:Ljava/lang/Object;

.field private final mManagedConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/content/browser/BindingManager$ManagedConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveInitialBindingDelay:J

.field private final mRemoveStrongBindingDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/BindingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BindingManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZJJ)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    iput v1, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    iput v1, p0, Lorg/chromium/content/browser/BindingManager;->mBoundForBackgroundPeriodPid:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPidLock:Ljava/lang/Object;

    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManager;->mIsLowMemoryDevice:Z

    iput-wide p2, p0, Lorg/chromium/content/browser/BindingManager;->mRemoveInitialBindingDelay:J

    iput-wide p4, p0, Lorg/chromium/content/browser/BindingManager;->mRemoveStrongBindingDelay:J

    return-void
.end method

.method public static createBindingManager()Lorg/chromium/content/browser/BindingManager;
    .locals 6

    const-wide/16 v2, 0x3e8

    const-string v0, "BindingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on creating binding manager isLowEndDevice ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/chromium/content/browser/BindingManager;

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/BindingManager;-><init>(ZJJ)V

    return-object v0
.end method

.method public static createBindingManagerForTesting(Z)Lorg/chromium/content/browser/BindingManager;
    .locals 6

    const-wide/16 v2, 0x0

    new-instance v0, Lorg/chromium/content/browser/BindingManager;

    move v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/BindingManager;-><init>(ZJJ)V

    return-object v0
.end method


# virtual methods
.method addNewConnection(ILorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 5

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPidLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/content/browser/BindingManager;->mIsLowMemoryDevice:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/BindingManager;->getConnectionForPid(I)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    const-string v1, "BindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last lastOomConnection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->dropOomBindings()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    new-instance v3, Lorg/chromium/content/browser/BindingManager$ManagedConnection;

    invoke-direct {v3, p2}, Lorg/chromium/content/browser/BindingManager$ManagedConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnection;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method bindAsHighPriority(I)V
    .locals 4

    const-string v1, "BindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindingasHIghpriority with pid  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BindingManager;->getConnectionForPid(I)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPidLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->attachAsActive()V

    iput p1, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearConnection(I)V
    .locals 4

    const-string v1, "BindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearConnection with pid    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->clearConnection()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getConnectionForPid(I)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;

    monitor-exit v2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->getConnection()Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    goto :goto_0
.end method

.method isOomProtected(I)Z
    .locals 3

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->isOomProtected()Z

    move-result v1

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onBroughtToForeground()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mBoundForBackgroundPeriodPid:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mBoundForBackgroundPeriodPid:I

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BindingManager;->unbindAsHighPriority(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/BindingManager;->mBoundForBackgroundPeriodPid:I

    :cond_0
    return-void
.end method

.method onSentToBackground()V
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/BindingManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mBoundForBackgroundPeriodPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPidLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BindingManager;->bindAsHighPriority(I)V

    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mLastOomPid:I

    iput v0, p0, Lorg/chromium/content/browser/BindingManager;->mBoundForBackgroundPeriodPid:I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeInitialBinding(I)V
    .locals 4

    const-string v1, "BindingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside removeinitial binding with pid  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BindingManager;->getConnectionForPid(I)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInitialBindingBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/chromium/content/browser/BindingManager$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/BindingManager$1;-><init>(Lorg/chromium/content/browser/BindingManager;Lorg/chromium/content/browser/ChildProcessConnection;)V

    iget-wide v2, p0, Lorg/chromium/content/browser/BindingManager;->mRemoveInitialBindingDelay:J

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method unbindAsHighPriority(I)V
    .locals 5

    const-string v2, "BindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindingasHIghpriority with pid  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BindingManager;->getConnectionForPid(I)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/chromium/content/browser/BindingManager$2;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/BindingManager$2;-><init>(Lorg/chromium/content/browser/BindingManager;Lorg/chromium/content/browser/ChildProcessConnection;)V

    iget-boolean v2, p0, Lorg/chromium/content/browser/BindingManager;->mIsLowMemoryDevice:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lorg/chromium/content/browser/BindingManager;->mRemoveStrongBindingDelay:J

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
