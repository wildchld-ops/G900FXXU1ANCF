.class public final enum Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;
.super Ljava/lang/Enum;
.source "ReadingListData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveAsOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

.field public static final enum SAVE_PAGE_AS_HTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

.field public static final enum SAVE_PAGE_AS_IMAGE:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

.field public static final enum SAVE_PAGE_AS_INVALID:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

.field public static final enum SAVE_PAGE_AS_MHTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;


# instance fields
.field private mSaveAsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    const-string v1, "SAVE_PAGE_AS_HTML"

    invoke-direct {v0, v1, v5, v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_HTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    const-string v1, "SAVE_PAGE_AS_MHTML"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_MHTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    const-string v1, "SAVE_PAGE_AS_IMAGE"

    invoke-direct {v0, v1, v4, v7}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_IMAGE:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    const-string v1, "SAVE_PAGE_AS_INVALID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_INVALID:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    new-array v0, v7, [Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_HTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_MHTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_IMAGE:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_INVALID:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->$VALUES:[Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->mSaveAsType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->$VALUES:[Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    return-object v0
.end method


# virtual methods
.method public getSaveAsType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->mSaveAsType:I

    return v0
.end method
