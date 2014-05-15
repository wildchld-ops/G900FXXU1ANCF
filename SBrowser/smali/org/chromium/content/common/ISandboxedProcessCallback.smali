.class public interface abstract Lorg/chromium/content/common/ISandboxedProcessCallback;
.super Ljava/lang/Object;
.source "ISandboxedProcessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/common/ISandboxedProcessCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract establishSurfacePeer(IILandroid/view/Surface;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
