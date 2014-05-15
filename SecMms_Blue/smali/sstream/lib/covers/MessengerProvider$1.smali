.class Lsstream/lib/covers/MessengerProvider$1;
.super Ljava/lang/Object;
.source "MessengerProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsstream/lib/covers/MessengerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    sget-object v3, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    sput-object v2, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "library_version"

    const-string v4, "1.2"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_package_name"

    sget-object v4, Lsstream/lib/covers/MessengerProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    #calls: Lsstream/lib/covers/MessengerProvider;->sendMessage(ILandroid/os/Bundle;)V
    invoke-static {v2, v0}, Lsstream/lib/covers/MessengerProvider;->access$0(ILandroid/os/Bundle;)V

    sget-object v2, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsstream/lib/covers/MessengerProvider$Request;

    iget-boolean v4, v1, Lsstream/lib/covers/MessengerProvider$Request;->mIsSent:Z

    if-nez v4, :cond_0

    const/4 v4, 0x3

    iget-object v5, v1, Lsstream/lib/covers/MessengerProvider$Request;->mBundle:Landroid/os/Bundle;

    #calls: Lsstream/lib/covers/MessengerProvider;->sendMessage(ILandroid/os/Bundle;)V
    invoke-static {v4, v5}, Lsstream/lib/covers/MessengerProvider;->access$0(ILandroid/os/Bundle;)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lsstream/lib/covers/MessengerProvider$Request;->mIsSent:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lsstream/lib/covers/MessengerProvider;->mService:Landroid/os/Messenger;

    invoke-static {}, Lsstream/lib/covers/MessengerProvider;->disconnectServer()Z

    return-void
.end method
