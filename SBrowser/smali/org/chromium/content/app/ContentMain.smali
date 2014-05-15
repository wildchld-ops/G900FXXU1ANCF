.class public Lorg/chromium/content/app/ContentMain;
.super Ljava/lang/Object;
.source "ContentMain.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initApplicationContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/app/ContentMain;->nativeInitApplicationContext(Landroid/content/Context;)V

    return-void
.end method

.method private static native nativeInitApplicationContext(Landroid/content/Context;)V
.end method

.method private static native nativeStart()I
.end method

.method public static start()I
    .locals 1

    invoke-static {}, Lorg/chromium/content/app/ContentMain;->nativeStart()I

    move-result v0

    return v0
.end method
