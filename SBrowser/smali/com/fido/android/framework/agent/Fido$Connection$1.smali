.class Lcom/fido/android/framework/agent/Fido$Connection$1;
.super Ljava/lang/Object;
.source "Fido.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fido/android/framework/agent/Fido$Connection;-><init>(Lcom/fido/android/framework/agent/Fido;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fido/android/framework/agent/Fido$Connection;

.field final synthetic val$servConnHandler:Landroid/os/Handler;

.field final synthetic val$this$0:Lcom/fido/android/framework/agent/Fido;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/Fido$Connection;Lcom/fido/android/framework/agent/Fido;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Connection$1;->this$1:Lcom/fido/android/framework/agent/Fido$Connection;

    iput-object p2, p0, Lcom/fido/android/framework/agent/Fido$Connection$1;->val$this$0:Lcom/fido/android/framework/agent/Fido;

    iput-object p3, p0, Lcom/fido/android/framework/agent/Fido$Connection$1;->val$servConnHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection$1;->this$1:Lcom/fido/android/framework/agent/Fido$Connection;

    invoke-static {p2}, Lcom/fido/android/framework/service/IFidoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fido/android/framework/service/IFidoService;

    move-result-object v1

    #setter for: Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;
    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/Fido$Connection;->access$102(Lcom/fido/android/framework/agent/Fido$Connection;Lcom/fido/android/framework/service/IFidoService;)Lcom/fido/android/framework/service/IFidoService;

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection$1;->val$servConnHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection$1;->this$1:Lcom/fido/android/framework/agent/Fido$Connection;

    const/4 v1, 0x0

    #setter for: Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;
    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/Fido$Connection;->access$102(Lcom/fido/android/framework/agent/Fido$Connection;Lcom/fido/android/framework/service/IFidoService;)Lcom/fido/android/framework/service/IFidoService;

    return-void
.end method
