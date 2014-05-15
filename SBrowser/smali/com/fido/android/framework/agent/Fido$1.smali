.class Lcom/fido/android/framework/agent/Fido$1;
.super Landroid/os/Handler;
.source "Fido.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fido/android/framework/agent/Fido;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fido/android/framework/agent/Fido;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/Fido;)V
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$1;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$1;->this$0:Lcom/fido/android/framework/agent/Fido;

    #getter for: Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido;->access$1000(Lcom/fido/android/framework/agent/Fido;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$1;->this$0:Lcom/fido/android/framework/agent/Fido;

    #getter for: Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido;->access$1000(Lcom/fido/android/framework/agent/Fido;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
