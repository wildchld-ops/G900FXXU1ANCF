.class final Lorg/chromium/content/browser/ChildProcessLauncher$2;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->start(Landroid/content/Context;[Ljava/lang/String;[I[I[ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clientContext:I

.field final synthetic val$connection:Lorg/chromium/content/browser/ChildProcessConnection;


# direct methods
.method constructor <init>(ILorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$clientContext:I

    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(I)V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on connect callback, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$clientContext:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$100()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/BindingManager;->addNewConnection(ILorg/chromium/content/browser/ChildProcessConnection;)V

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$clientContext:I

    #calls: Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(II)V
    invoke-static {v0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$400(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    #calls: Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$300(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method
