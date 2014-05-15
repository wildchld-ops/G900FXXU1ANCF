.class public Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "ContextedRuntimeException.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p3, :cond_0

    new-instance p3, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;

    invoke-direct {p3}, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public getContextEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/decoder/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->exceptionContext:Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ExceptionContext;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/ContextedRuntimeException;

    move-result-object v0

    return-object v0
.end method
