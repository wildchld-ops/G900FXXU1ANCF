.class public final enum Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;
.super Ljava/lang/Enum;
.source "SBrowserSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum BOOKMARK_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum CONTACT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum EXTENSION_APP:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum HISTORY_BODY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum HISTORY_KEYWORD:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum HISTORY_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum HISTORY_URL:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum OPERATOR_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum SAVEPAGE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum SEARCH_HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum SEARCH_OTHER_ENGINE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum SEARCH_RESULT_NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum SEARCH_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum SEARCH_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field public static final enum VOICE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;


# instance fields
.field private final mNativeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "URL_WHAT_YOU_TYPED"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "HISTORY_URL"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_URL:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "HISTORY_TITLE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "HISTORY_BODY"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_BODY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "HISTORY_KEYWORD"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_KEYWORD:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "NAVSUGGEST"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "SEARCH_WHAT_YOU_TYPED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "SEARCH_HISTORY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "SEARCH_SUGGEST"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "SEARCH_OTHER_ENGINE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_OTHER_ENGINE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "EXTENSION_APP"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->EXTENSION_APP:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "CONTACT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->CONTACT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "BOOKMARK_TITLE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->BOOKMARK_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "VOICE_SUGGEST"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->VOICE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "SAVEPAGE_SUGGEST"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SAVEPAGE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "OPERATOR_SUGGEST"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->OPERATOR_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const-string v1, "SEARCH_RESULT_NAVSUGGEST"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_RESULT_NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_URL:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_BODY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_KEYWORD:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_OTHER_ENGINE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->EXTENSION_APP:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->CONTACT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->BOOKMARK_TITLE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->VOICE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SAVEPAGE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->OPERATOR_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_RESULT_NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->mNativeType:I

    return-void
.end method

.method static GetNativeType(I)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;
    .locals 6

    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->values()[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v5, v3, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->mNativeType:I

    if-ne v5, p0, :cond_0

    move-object v4, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->mNativeType:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    return-object v0
.end method


# virtual methods
.method public isUrl()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_URL:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->NAVSUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public nativeType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->mNativeType:I

    return v0
.end method
