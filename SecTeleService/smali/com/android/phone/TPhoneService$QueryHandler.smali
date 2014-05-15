.class Lcom/android/phone/TPhoneService$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method public constructor <init>(Lcom/android/phone/TPhoneService;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2500(Lcom/android/phone/TPhoneService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2600(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2600(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ITPhoneEventListener;

    const-string v7, "key"

    invoke-interface {v5, v7, v1}, Lcom/android/phone/ITPhoneEventListener;->onQueryComplete(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2600(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    const-string v5, "TPhoneService"

    const-string v7, "onQueryComplete() Exception"

    invoke-static {v5, v7, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2600(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_5
    iget-object v7, p0, Lcom/android/phone/TPhoneService$QueryHandler;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$2600(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
