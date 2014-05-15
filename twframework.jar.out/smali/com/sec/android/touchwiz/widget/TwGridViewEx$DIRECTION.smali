.class final enum Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;
.super Ljava/lang/Enum;
.source "TwGridViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGridViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

.field public static final enum DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

.field public static final enum DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

.field public static final enum DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    const-string v1, "DIRECTION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    const-string v1, "DIRECTION_PINCH_IN"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    const-string v1, "DIRECTION_PINCH_OUT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;
    .locals 1

    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    invoke-virtual {v0}, [Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    return-object v0
.end method
