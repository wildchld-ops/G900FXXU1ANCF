.class public Lcom/kikin/KikinCore;
.super Ljava/lang/Object;
.source "KikinCore.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v1, "kikin_common"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "kikin"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libkikin.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeGetTextEntity(Ljava/lang/String;IILjava/lang/String;)Lcom/kikin/Range;
.end method
