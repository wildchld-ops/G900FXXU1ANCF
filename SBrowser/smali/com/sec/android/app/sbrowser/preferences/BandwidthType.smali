.class public final enum Lcom/sec/android/app/sbrowser/preferences/BandwidthType;
.super Ljava/lang/Enum;
.source "BandwidthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/preferences/BandwidthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

.field public static final enum ALWAYS_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

.field public static final enum NEVER_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

.field public static final enum PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;


# instance fields
.field private index:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    const-string v1, "ALWAYS_PREFETCH"

    const-string v2, "always_prefetch"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->ALWAYS_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    const-string v1, "PREFETCH_ON_WIFI"

    const-string v2, "prefetch_on_wifi"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    const-string v1, "NEVER_PREFETCH"

    const-string v2, "never_prefetch"

    invoke-direct {v0, v1, v4, v2, v6}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->NEVER_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    new-array v0, v6, [Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->ALWAYS_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->NEVER_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->title:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index:I

    return-void
.end method

.method public static GetBandwidthFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->values()[Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-object v1, v0

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    iget-object v6, v3, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->title:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static GetTypeFromIndex(I)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->values()[Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-object v1, v0

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    iget v6, v3, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index:I

    if-ne v6, p0, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/preferences/BandwidthType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    return-object v0
.end method


# virtual methods
.method public getDisplayTitle()I
    .locals 2

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0c005c

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->CHINA:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c005b

    goto :goto_0

    :cond_0
    const v0, 0x7f0c005a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c0059

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public index()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->title:Ljava/lang/String;

    return-object v0
.end method
