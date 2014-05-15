.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowManagerPolicy"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static WINDOW_MODE_FREESTYLE:I

.field public static WINDOW_MODE_MASK:I

.field public static WINDOW_MODE_NORMAL:I

.field public static WINDOW_MODE_OPTION_COMMON_PINUP:I

.field public static WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "WINDOW_MODE_MASK"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "WINDOW_MODE_NORMAL"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WINDOW_MODE_FREESTYLE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "WINDOW_MODE_OPTION_COMMON_SCALE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "WINDOW_MODE_OPTION_COMMON_PINUP"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WINDOW_MODE_OPTION_COMMON_MINIMIZED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_MASK"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_A"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_B"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_C"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_D"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_E"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_F"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK"

    aput-object v3, v1, v2

    sput-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    :try_start_0
    const-class v2, Landroid/view/WindowManagerPolicy;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
