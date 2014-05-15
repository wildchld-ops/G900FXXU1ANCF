.class public Lcom/fido/android/framework/agent/MFACSDKWebKit;
.super Ljava/lang/Object;
.source "MFACSDKWebKit.java"


# instance fields
.field private mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fido/android/framework/agent/RequestParams;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fido/android/framework/agent/MFACSDK;

    invoke-direct {v0, p1, p2}, Lcom/fido/android/framework/agent/MFACSDK;-><init>(Landroid/content/Context;Lcom/fido/android/framework/agent/RequestParams;)V

    iput-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    return-void
.end method


# virtual methods
.method public getLastError()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/MFACSDK;->getLastError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoMatch()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/MFACSDK;->getNoMatch()Z

    move-result v0

    return v0
.end method

.method public final getVerRangeHigh()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/MFACSDK;->getVerRangeHigh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVerRangeStart()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/MFACSDK;->getVerRangeStart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/MFACSDK;->isReady()Z

    move-result v0

    return v0
.end method

.method public isReged(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0, p1}, Lcom/fido/android/framework/agent/MFACSDK;->isReged(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDKWebKit;->mfacsdk:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fido/android/framework/agent/MFACSDK;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
