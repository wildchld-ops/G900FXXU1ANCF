.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    :array_0
    .array-data 0x4
        0x5ct 0x0t 0xbt 0x7ft
        0x5dt 0x0t 0xbt 0x7ft
        0x5et 0x0t 0xbt 0x7ft
        0x5ft 0x0t 0xbt 0x7ft
        0x60t 0x0t 0xbt 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x5ct 0x0t 0xbt 0x7ft
        0x5dt 0x0t 0xbt 0x7ft
        0x5et 0x0t 0xbt 0x7ft
        0x5ft 0x0t 0xbt 0x7ft
        0x79t 0x0t 0xbt 0x7ft
        0x60t 0x0t 0xbt 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x5ct 0x0t 0xbt 0x7ft
        0x5dt 0x0t 0xbt 0x7ft
        0x5et 0x0t 0xbt 0x7ft
        0x5ft 0x0t 0xbt 0x7ft
        0x79t 0x0t 0xbt 0x7ft
        0x7at 0x0t 0xbt 0x7ft
        0x60t 0x0t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x61t 0x0t 0xbt 0x7ft
        0x62t 0x0t 0xbt 0x7ft
        0x63t 0x0t 0xbt 0x7ft
        0x64t 0x0t 0xbt 0x7ft
        0x67t 0x0t 0xbt 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x61t 0x0t 0xbt 0x7ft
        0x62t 0x0t 0xbt 0x7ft
        0x63t 0x0t 0xbt 0x7ft
        0x64t 0x0t 0xbt 0x7ft
        0x65t 0x0t 0xbt 0x7ft
        0x67t 0x0t 0xbt 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x61t 0x0t 0xbt 0x7ft
        0x62t 0x0t 0xbt 0x7ft
        0x63t 0x0t 0xbt 0x7ft
        0x64t 0x0t 0xbt 0x7ft
        0x65t 0x0t 0xbt 0x7ft
        0x66t 0x0t 0xbt 0x7ft
        0x67t 0x0t 0xbt 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x69t 0x0t 0xbt 0x7ft
        0x6at 0x0t 0xbt 0x7ft
        0x6bt 0x0t 0xbt 0x7ft
        0x6ct 0x0t 0xbt 0x7ft
        0x6dt 0x0t 0xbt 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x6et 0x0t 0xbt 0x7ft
        0x6ft 0x0t 0xbt 0x7ft
        0x70t 0x0t 0xbt 0x7ft
        0x71t 0x0t 0xbt 0x7ft
        0x72t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
