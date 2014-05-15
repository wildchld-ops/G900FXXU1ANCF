.class public Lcom/android/phone/CGMvSystem;
.super Ljava/lang/Object;
.source "CGMvSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SDebugPrintError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GSystem"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static SDebugPrintInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GSystem"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
