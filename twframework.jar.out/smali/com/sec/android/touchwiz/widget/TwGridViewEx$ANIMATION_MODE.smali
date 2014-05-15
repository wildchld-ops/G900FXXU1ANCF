.class final enum Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;
.super Ljava/lang/Enum;
.source "TwGridViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGridViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ANIMATION_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

.field public static final enum ANIMATION_MOVE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

.field public static final enum ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

.field public static final enum ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const-string v1, "ANIMATION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const-string v1, "ANIMATION_PINCH"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const-string v1, "ANIMATION_MOVE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_MOVE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_MOVE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;
    .locals 1

    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    invoke-virtual {v0}, [Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    return-object v0
.end method
