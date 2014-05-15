.class public final enum Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;
.super Ljava/lang/Enum;
.source "SBrowserSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SBrowserSuggestionOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

.field public static final enum BOOKMARK:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

.field public static final enum DIRECT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

.field public static final enum HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

.field public static final enum SAVEPAGE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

.field public static final enum SEARCH_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

.field public static final enum URL_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;


# instance fields
.field private final mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const-string v1, "URL_WHAT_YOU_TYPE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->URL_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const-string v1, "SEARCH_WHAT_YOU_TYPE"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->SEARCH_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const-string v1, "BOOKMARK"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const-string v1, "SAVEPAGE"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->SAVEPAGE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const-string v1, "DIRECT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->DIRECT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->URL_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->SEARCH_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->SAVEPAGE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->DIRECT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->mOrder:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    return-object v0
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->mOrder:I

    return v0
.end method
