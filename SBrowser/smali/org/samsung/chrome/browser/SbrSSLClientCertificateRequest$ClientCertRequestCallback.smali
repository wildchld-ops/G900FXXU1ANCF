.class public interface abstract Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;
.super Ljava/lang/Object;
.source "SbrSSLClientCertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientCertRequestCallback"
.end annotation


# virtual methods
.method public abstract onPrivateKeyAliasSelectedFromPlatform(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;Ljava/lang/String;)V
.end method

.method public abstract shouldOverrideClientCertRequest(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)Z
.end method
