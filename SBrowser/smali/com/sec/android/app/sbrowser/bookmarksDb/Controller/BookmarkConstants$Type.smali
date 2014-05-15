.class public final enum Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
.super Ljava/lang/Enum;
.source "BookmarkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

.field public static final enum FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

.field public static final enum URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->NONE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->NONE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    return-object v0
.end method
