.class public abstract Lorg/chromium/base/CpuFeatures;
.super Ljava/lang/Object;
.source "CpuFeatures.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "base::android"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCount()I
    .locals 1

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->nativeGetCoreCount()I

    move-result v0

    return v0
.end method

.method public static getMask()J
    .locals 2

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->nativeGetCpuFeatures()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeGetCoreCount()I
.end method

.method private static native nativeGetCpuFeatures()J
.end method
