.class public Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$1;,
        Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;,
        Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private arraylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->broadcast(Landroid/os/Message;Z)V

    return-void
.end method

.method public broadcast(Landroid/os/Message;Z)V
    .locals 12

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-eqz v10, :cond_4

    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    move-object v7, v6

    :cond_0
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    move-object v10, v0

    check-cast v10, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget v10, v10, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-ge v10, v2, :cond_1

    check-cast v7, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    check-cast v7, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-ne v7, v6, :cond_0

    :cond_1
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    move-object v10, v0

    check-cast v10, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget v10, v10, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-ne v10, v2, :cond_3

    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    move-object v10, v0

    check-cast v10, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v9, v10, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    check-cast v7, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    check-cast v7, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v8, v7, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    array-length v3, v9

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v1, v9, v4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    aget v10, v8, v4

    iput v10, v5, Landroid/os/Message;->what:I

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    if-ne v10, v11, :cond_2

    invoke-virtual {v1, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    move-object v6, v5

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-ge v7, p1, :cond_2

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-ne v6, v5, :cond_1

    :cond_2
    iget v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-ne v7, p1, :cond_0

    const/4 v4, 0x0

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    array-length v3, v0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v7, v0, v4

    if-ne v7, p2, :cond_3

    aget v7, v1, v4

    if-ne v7, p3, :cond_3

    add-int/lit8 v7, v3, -0x1

    new-array v7, v7, [Landroid/os/Handler;

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    add-int/lit8 v7, v3, -0x1

    new-array v7, v7, [I

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    iget-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v0, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v1, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v7, v3, v4

    add-int/lit8 v2, v7, -0x1

    if-eqz v2, :cond_0

    add-int/lit8 v7, v4, 0x1

    iget-object v8, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v0, v7, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v4, 0x1

    iget-object v8, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v1, v7, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public dumpRegistrations()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->getRegistrationRepresentations()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcaster "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    senderWhat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->senderWhat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->targets:[Landroid/os/Handler;

    array-length v2, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->targetWhats:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->targets:[Landroid/os/Handler;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcaster "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " { No registrations }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getRegistrationRepresentations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    :cond_1
    :try_start_1
    new-instance v4, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;-><init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_1
.end method

.method public request(ILandroid/os/Handler;I)V
    .locals 9

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;-><init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$1;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iput p1, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/os/Handler;

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    const/4 v7, 0x0

    aput p3, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->prev:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    :cond_1
    iget v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-ge v6, p1, :cond_2

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-ne v5, v2, :cond_1

    :cond_2
    iget-object v0, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v1, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    iget v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-eq v6, p1, :cond_5

    new-instance v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;-><init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$1;)V

    iput p1, v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v6, 0x1

    new-array v6, v6, [I

    iput-object v6, v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    iput-object v5, v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->prev:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iput-object v6, v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->prev:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->prev:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iput-object v2, v6, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iput-object v2, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->prev:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    if-ne v5, v6, :cond_3

    iget v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    iget v7, v2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    if-le v6, v7, :cond_3

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->mReg:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

    :cond_3
    move-object v5, v2

    :cond_4
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v6, 0x0

    iget-object v7, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    const/4 v6, 0x0

    iget-object v7, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v6, v3

    iget-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    aput p3, v6, v3

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_5
    :try_start_1
    iget-object v6, v5, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v3, v6

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    if-ne v6, p2, :cond_6

    aget v6, v1, v4

    if-eq v6, p3, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
