.class public interface abstract Lcom/nuance/connect/api/DLMService$DlmEventCallback;
.super Ljava/lang/Object;
.source "DLMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/DLMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DlmEventCallback"
.end annotation


# virtual methods
.method public abstract backupDlm()Z
.end method

.method public abstract processDlmDelete(I)Z
.end method

.method public abstract processEvent(Ljava/lang/String;)Z
.end method
