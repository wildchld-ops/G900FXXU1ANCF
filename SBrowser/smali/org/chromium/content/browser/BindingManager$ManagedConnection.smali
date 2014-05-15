.class Lorg/chromium/content/browser/BindingManager$ManagedConnection;
.super Ljava/lang/Object;
.source "BindingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/BindingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedConnection"
.end annotation


# instance fields
.field private mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private mWasOomProtected:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    return-void
.end method


# virtual methods
.method clearConnection()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mWasOomProtected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    return-void
.end method

.method getConnection()Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    return-object v0
.end method

.method isOomProtected()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManager$ManagedConnection;->mWasOomProtected:Z

    goto :goto_0
.end method
