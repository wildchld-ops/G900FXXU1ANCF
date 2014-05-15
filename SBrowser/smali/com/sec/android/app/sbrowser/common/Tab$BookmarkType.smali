.class final enum Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;
.super Ljava/lang/Enum;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BookmarkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

.field public static final enum Both:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

.field public static final enum None:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

.field public static final enum OperatorBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

.field public static final enum UserBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->None:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    const-string v1, "UserBookmark"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->UserBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    const-string v1, "OperatorBookmark"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->OperatorBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    const-string v1, "Both"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->Both:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->None:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->UserBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->OperatorBookmark:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->Both:Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/Tab$BookmarkType;

    return-object v0
.end method
