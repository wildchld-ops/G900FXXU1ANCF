.class public Lcom/fido/android/framework/agent/api/OstpIn;
.super Ljava/lang/Object;
.source "OstpIn.java"


# instance fields
.field public checkPolicyOnly:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public request:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public requestParams:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    return-void
.end method
