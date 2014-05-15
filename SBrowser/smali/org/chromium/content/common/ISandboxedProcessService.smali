.class public interface abstract Lorg/chromium/content/common/ISandboxedProcessService;
.super Ljava/lang/Object;
.source "ISandboxedProcessService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/common/ISandboxedProcessService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setSurface(ILandroid/view/Surface;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/ISandboxedProcessCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
