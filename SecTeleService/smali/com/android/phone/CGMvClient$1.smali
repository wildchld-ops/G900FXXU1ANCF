.class Lcom/android/phone/CGMvClient$1;
.super Landroid/os/Handler;
.source "CGMvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CGMvClient;->ServiceRegister(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CGMvClient;


# direct methods
.method constructor <init>(Lcom/android/phone/CGMvClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    iget-object v1, v1, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    iget-object v1, v1, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/CGMvClient;->SendMessage(III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    iget v1, v1, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    iget-object v1, v1, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    iget-object v1, v1, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/CGMvClient$1;->this$0:Lcom/android/phone/CGMvClient;

    iget-object v2, v2, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
