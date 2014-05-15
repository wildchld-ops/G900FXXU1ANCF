.class public Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/SelectFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayedRunnable"
.end annotation


# instance fields
.field private capture:Ljava/lang/String;

.field private fileTypes:[Ljava/lang/String;

.field final synthetic this$0:Lorg/chromium/ui/SelectFileDialog;

.field private window:Lorg/chromium/ui/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/SelectFileDialog;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->this$0:Lorg/chromium/ui/SelectFileDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->fileTypes:[Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->capture:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->window:Lorg/chromium/ui/WindowAndroid;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->this$0:Lorg/chromium/ui/SelectFileDialog;

    iget-object v1, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->fileTypes:[Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->capture:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/ui/SelectFileDialog$DelayedRunnable;->window:Lorg/chromium/ui/WindowAndroid;

    #calls: Lorg/chromium/ui/SelectFileDialog;->selectFileAfterDelay([Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/ui/SelectFileDialog;->access$000(Lorg/chromium/ui/SelectFileDialog;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/ui/WindowAndroid;)V

    return-void
.end method
