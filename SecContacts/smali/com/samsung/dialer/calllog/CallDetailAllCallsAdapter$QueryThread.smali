.class Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;
.super Ljava/lang/Thread;
.source "CallDetailAllCallsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->this$0:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    const-string v0, "CallLogAdapter.QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->mDone:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->mDone:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method public stopProcessing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter$QueryThread;->mDone:Z

    return-void
.end method
