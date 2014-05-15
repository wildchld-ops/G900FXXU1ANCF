.class public interface abstract Lcom/fido/android/framework/service/IFidoService;
.super Ljava/lang/Object;
.source "IFidoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fido/android/framework/service/IFidoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract processXmlCommand(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
