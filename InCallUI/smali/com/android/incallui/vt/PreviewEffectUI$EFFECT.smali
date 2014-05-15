.class final enum Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;
.super Ljava/lang/Enum;
.source "PreviewEffectUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/vt/PreviewEffectUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EFFECT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

.field public static final enum EFFECT_01:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

.field public static final enum EFFECT_02:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

.field public static final enum EFFECT_03:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

.field public static final enum EFFECT_04:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

.field public static final enum EFFECT_05:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    const-string v1, "EFFECT_01"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_01:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    const-string v1, "EFFECT_02"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v4, v2}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_02:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    const-string v1, "EFFECT_03"

    const/16 v2, 0x12e

    invoke-direct {v0, v1, v5, v2}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_03:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    const-string v1, "EFFECT_04"

    const/16 v2, 0x12f

    invoke-direct {v0, v1, v6, v2}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_04:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    const-string v1, "EFFECT_05"

    const/16 v2, 0x130

    invoke-direct {v0, v1, v7, v2}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_05:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_01:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_02:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_03:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_04:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_05:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->$VALUES:[Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

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

    iput p3, p0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;
    .locals 1

    const-class v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;
    .locals 1

    sget-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->$VALUES:[Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-virtual {v0}, [Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->value:I

    return v0
.end method
