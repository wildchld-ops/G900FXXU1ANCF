.class final Lorg/chromium/content/browser/ChildProcessLauncher$3;
.super Lorg/chromium/content/common/IChildProcessCallback$Stub;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(I)Lorg/chromium/content/common/IChildProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackType:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public establishSurfacePeer(ILandroid/view/Surface;II)V
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    #calls: Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$500(ILandroid/view/Surface;II)V

    goto :goto_0
.end method

.method public getViewSurface(I)Landroid/view/Surface;
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    #calls: Lorg/chromium/content/browser/ChildProcessLauncher;->nativeGetViewSurface(I)Landroid/view/Surface;
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$600(I)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method
