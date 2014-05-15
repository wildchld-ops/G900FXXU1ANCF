.class public final enum Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
.super Ljava/lang/Enum;
.source "SBrowserCVHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

.field public static final enum DOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

.field public static final enum LEFT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

.field public static final enum RIGHT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->LEFT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->RIGHT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->DOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->LEFT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->RIGHT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->DOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->$VALUES:[Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    return-object v0
.end method
