.class public final Lorg/samsung/base/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field private static LOG_ENABLE_D:Z

.field private static LOG_ENABLE_E:Z

.field private static LOG_ENABLE_I:Z

.field private static LOG_ENABLE_V:Z

.field private static LOG_ENABLE_W:Z

.field private static final RVALUE:I

.field public static assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_V:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_D:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_E:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_I:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/samsung/base/SLog;->assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_D:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_D:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_E:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_E:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableLogHigh()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_E:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_I:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_D:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_V:Z

    return-void
.end method

.method public static enableLogLow()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v1, Lorg/samsung/base/SLog;->LOG_ENABLE_E:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_I:Z

    sput-boolean v1, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_D:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_V:Z

    return-void
.end method

.method public static enableLogMed()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_E:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_D:Z

    sput-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    sput-boolean v1, Lorg/samsung/base/SLog;->LOG_ENABLE_I:Z

    sput-boolean v1, Lorg/samsung/base/SLog;->LOG_ENABLE_V:Z

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_I:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_I:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_V:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_V:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lorg/samsung/base/SLog;->LOG_ENABLE_W:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
