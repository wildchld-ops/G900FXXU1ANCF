.class public interface abstract Lcom/nuance/connect/api/DLMService;
.super Ljava/lang/Object;
.source "DLMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/DLMService$DlmEventCallback;
    }
.end annotation


# virtual methods
.method public abstract onBeginBackup(I)V
.end method

.method public abstract onDlmEvent(ILjava/lang/String;JZ)V
.end method

.method public abstract onEndBackup()V
.end method

.method public abstract onReset(IZ)V
.end method

.method public abstract registerDlmCallback(ILcom/nuance/connect/api/DLMService$DlmEventCallback;)V
.end method

.method public abstract resume()V
.end method

.method public abstract resume(I)V
.end method

.method public abstract unregisterDlmCallback(I)V
.end method

.method public abstract updateLocation()V
.end method

.method public abstract yield()V
.end method

.method public abstract yield(I)V
.end method
