.class public final Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;
.super Ljava/lang/Object;
.source "SearchEngineType.java"


# static fields
.field private static final $VALUES:[Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

.field public static final SEARCH_ENGINE_BING:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

.field public static final SEARCH_ENGINE_GOOGLE:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

.field public static final SEARCH_ENGINE_YAHOO:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;


# instance fields
.field private final index:I

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    const-string v2, "SEARCH_ENGINE_GOOGLE"

    const-string v3, "google"

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_GOOGLE:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    const-string v2, "SEARCH_ENGINE_YAHOO"

    const-string v3, "yahoo"

    invoke-direct {v1, v2, v5, v3, v5}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_YAHOO:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    const-string v2, "SEARCH_ENGINE_BING"

    const-string v3, "bing"

    invoke-direct {v1, v2, v6, v3, v6}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_BING:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    const/4 v1, 0x3

    new-array v0, v1, [Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_GOOGLE:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_YAHOO:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_BING:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->title:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->index:I

    return-void
.end method

.method public static GetTypeFromIndex(I)Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->values()[Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_GOOGLE:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    iget v6, v5, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->index:I

    if-ne v6, p0, :cond_1

    move-object v4, v5

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static GetTypeFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->values()[Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->SEARCH_ENGINE_GOOGLE:Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    iget-object v6, v5, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->title:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    check-cast v0, [Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    return-object v0
.end method


# virtual methods
.method public getDisplayTitle()I
    .locals 2

    iget v1, p0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->index:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0c00ed

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c00ee

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c00ef

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public index()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->index:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->title:Ljava/lang/String;

    return-object v0
.end method
