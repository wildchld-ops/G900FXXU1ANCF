.class public Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
.super Ljava/lang/Object;
.source "BasicThreadFactory.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/decoder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/decoder/Builder",
        "<",
        "Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private daemonFlag:Ljava/lang/Boolean;

.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private namingPattern:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;-><init>(Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$1;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->reset()V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->build()Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public daemon(Z)Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public namingPattern(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Naming pattern must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method public priority(I)Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public uncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uncaught exception handler must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public wrappedFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped ThreadFactory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method
