.class Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;->mRule:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;->mRule:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;->mRule:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    invoke-interface {v1, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;->mRule:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
