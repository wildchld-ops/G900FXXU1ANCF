.class public Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyInvocationHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport$ProxyInvocationHandler;->this$0:Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport$ProxyInvocationHandler;->this$0:Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;

    #getter for: Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;->listeners:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;->access$000(Lcom/sec/android/app/sbrowser/decoder/EventListenerSupport;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
