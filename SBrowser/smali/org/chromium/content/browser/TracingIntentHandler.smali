.class public Lorg/chromium/content/browser/TracingIntentHandler;
.super Ljava/lang/Object;
.source "TracingIntentHandler.java"


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

.method public static beginTracing(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/TracingIntentHandler;->nativeBeginTracing(Ljava/lang/String;)V

    return-void
.end method

.method public static endTracing()V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/TracingIntentHandler;->nativeEndTracing()V

    return-void
.end method

.method private static native nativeBeginTracing(Ljava/lang/String;)V
.end method

.method private static native nativeEndTracing()V
.end method
