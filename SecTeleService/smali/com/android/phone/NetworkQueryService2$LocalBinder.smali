.class public Lcom/android/phone/NetworkQueryService2$LocalBinder;
.super Landroid/os/Binder;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService2;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkQueryService2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkQueryService2$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService2;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/phone/INetworkQueryService2;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mBinder:Lcom/android/phone/INetworkQueryService2$Stub;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService2;->access$000(Lcom/android/phone/NetworkQueryService2;)Lcom/android/phone/INetworkQueryService2$Stub;

    move-result-object v0

    return-object v0
.end method
