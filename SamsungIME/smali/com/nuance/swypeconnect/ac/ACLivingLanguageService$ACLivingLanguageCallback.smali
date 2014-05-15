.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;
.super Ljava/lang/Object;
.source "ACLivingLanguageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACLivingLanguageCallback"
.end annotation


# virtual methods
.method public abstract downloadProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract subscribed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract unsubscribed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updatesAvailable(Z)V
.end method
