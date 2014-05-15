.class Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;
.super Ljava/lang/Thread;
.source "CallLogContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/CallLogContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/calllog/CallLogContactsSync;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const-string v0, "CallLogAdapter.QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->mDone:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mScrollState:I
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$200(Lcom/samsung/dialer/calllog/CallLogContactsSync;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->mDone:Z

    if-eqz v3, :cond_1

    return-void

    :cond_0
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$300(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$300(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$300(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/samsung/dialer/calllog/ContactInfoRequest;

    move-object v2, v0

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v4, v2, Lcom/samsung/dialer/calllog/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/dialer/calllog/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v6, v2, Lcom/samsung/dialer/calllog/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    #calls: Lcom/samsung/dialer/calllog/CallLogContactsSync;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$400(Lcom/samsung/dialer/calllog/CallLogContactsSync;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$500(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$300(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    #getter for: Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->access$300(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Ljava/util/LinkedList;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public stopProcessing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->mDone:Z

    return-void
.end method
