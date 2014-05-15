.class Lorg/chromium/content/browser/BindingManager$2;
.super Ljava/lang/Object;
.source "BindingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BindingManager;->unbindAsHighPriority(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BindingManager;

.field final synthetic val$connection:Lorg/chromium/content/browser/ChildProcessConnection;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BindingManager;Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/BindingManager$2;->this$0:Lorg/chromium/content/browser/BindingManager;

    iput-object p2, p0, Lorg/chromium/content/browser/BindingManager$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$2;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->detachAsActive()V

    :cond_0
    return-void
.end method
