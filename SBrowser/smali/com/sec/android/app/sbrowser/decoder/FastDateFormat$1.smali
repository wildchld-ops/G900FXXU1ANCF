.class final Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$1;
.super Lcom/sec/android/app/sbrowser/decoder/FormatCache;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/decoder/FormatCache",
        "<",
        "Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$1;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    move-result-object v0

    return-object v0
.end method
