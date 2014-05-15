.class public Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneDisplayKey;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNumberRule;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNameRule;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwelveHourField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitMonthField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitYearField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitNumberField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$PaddedNumberField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$UnpaddedMonthField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$UnpaddedNumberField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$StringLiteral;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$CharacterLiteral;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;,
        Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/decoder/FormatCache",
            "<",
            "Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->init()V

    return-void
.end method

.method public static getDateInstance(I)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-virtual {v0, p0, v1, v1}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(I)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, p1}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1, v2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cache:Lcom/sec/android/app/sbrowser/decoder/FormatCache;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v2, v1

    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->parsePattern()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mRules:[Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mRules:[Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

    array-length v0, v3

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mRules:[Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mMaxLengthEstimate:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->init()V

    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mRules:[Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p2, p1}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public format(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v0, "<null>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$Rule;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v7, v0, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    const/16 v19, 0x0

    aput v6, v7, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    aget v6, v7, v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    return-object v11

    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal pattern component: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :sswitch_0
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0, v4}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    :goto_1
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    sget-object v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitYearField;->INSTANCE:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitYearField;

    goto :goto_1

    :cond_2
    const/16 v19, 0x1

    const/16 v20, 0x4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v17, 0x4

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto :goto_1

    :sswitch_2
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v9}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v12}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    sget-object v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitMonthField;->INSTANCE:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitMonthField;

    goto :goto_1

    :cond_6
    sget-object v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$UnpaddedMonthField;->INSTANCE:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$UnpaddedMonthField;

    goto :goto_1

    :sswitch_3
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto :goto_1

    :sswitch_4
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwelveHourField;

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwelveHourField;-><init>(Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;)V

    goto :goto_1

    :sswitch_5
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_6
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_7
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_8
    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_9
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;

    const/16 v20, 0x7

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    move-object/from16 v19, v13

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v19, v18

    goto :goto_2

    :sswitch_a
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_b
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_c
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_d
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_e
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;

    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-direct {v10, v0, v3}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_f
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwentyFourHourField;-><init>(Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;)V

    goto/16 :goto_1

    :sswitch_10
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_1

    :sswitch_11
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_1

    :cond_8
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_1

    :sswitch_12
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    sget-object v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNumberRule;

    goto/16 :goto_1

    :cond_9
    sget-object v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TimeZoneNumberRule;

    goto/16 :goto_1

    :sswitch_13
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$CharacterLiteral;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$CharacterLiteral;-><init>(C)V

    goto/16 :goto_1

    :cond_a
    new-instance v10, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$StringLiteral;

    invoke-direct {v10, v14}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$StringLiteral;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_13
        0x44 -> :sswitch_a
        0x45 -> :sswitch_9
        0x46 -> :sswitch_b
        0x47 -> :sswitch_0
        0x48 -> :sswitch_5
        0x4b -> :sswitch_10
        0x4d -> :sswitch_2
        0x53 -> :sswitch_8
        0x57 -> :sswitch_d
        0x5a -> :sswitch_12
        0x61 -> :sswitch_e
        0x64 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6b -> :sswitch_f
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x77 -> :sswitch_c
        0x79 -> :sswitch_1
        0x7a -> :sswitch_11
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x61

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/16 v8, 0x27

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p2, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_0

    if-le v1, v10, :cond_1

    :cond_0
    if-lt v1, v11, :cond_2

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_8

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v4, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_5

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    :cond_5
    if-nez v3, :cond_9

    if-lt v1, v9, :cond_6

    if-le v1, v10, :cond_7

    :cond_6
    if-lt v1, v11, :cond_9

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_9

    :cond_7
    add-int/lit8 v2, v2, -0x1

    :cond_8
    aput v2, p2, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected selectNumberRule(II)Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$NumberRule;
    .locals 1

    packed-switch p2, :pswitch_data_0

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$PaddedNumberField;-><init>(II)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$UnpaddedNumberField;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat$TwoDigitNumberField;-><init>(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
