.class public Lcom/samsung/dialer/calllog/TimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# static fields
.field private static sStartT:J

.field private static sStrElapsed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sEnd()Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/dialer/calllog/TimeChecker;->sStartT:J

    sub-long v0, v2, v4

    const-string v2, "Elapsed time : %.3f ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, v0

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/dialer/calllog/TimeChecker;->sStrElapsed:Ljava/lang/String;

    sget-object v2, Lcom/samsung/dialer/calllog/TimeChecker;->sStrElapsed:Ljava/lang/String;

    return-object v2
.end method

.method public static sStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/dialer/calllog/TimeChecker;->sStartT:J

    return-void
.end method
