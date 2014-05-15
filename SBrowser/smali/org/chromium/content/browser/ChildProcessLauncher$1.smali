.class final Lorg/chromium/content/browser/ChildProcessLauncher$1;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;Z)Lorg/chromium/content/browser/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildProcessDied(I)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->stop(I)V

    return-void
.end method
