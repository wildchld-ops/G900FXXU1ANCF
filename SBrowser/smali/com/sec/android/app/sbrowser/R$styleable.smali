.class public final Lcom/sec/android/app/sbrowser/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AccountSyncCheckBoxPreference:[I = null

.field public static final AccountSyncCheckBoxPreference_pref:I = 0x0

.field public static final ChromeViewHolder:[I = null

.field public static final ChromeViewHolder_gutterPercentage:I = 0x1

.field public static final ChromeViewHolder_location_allowed:I = 0x2

.field public static final ChromeViewHolder_popups_allowed:I = 0x3

.field public static final ChromeViewHolder_spaceBetweenTabs:I

.field public static final SflScrollView:[I

.field public static final SflScrollView_android_galleryItemBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->AccountSyncCheckBoxPreference:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->ChromeViewHolder:[I

    new-array v0, v3, [I

    const v1, 0x101004c

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->SflScrollView:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
