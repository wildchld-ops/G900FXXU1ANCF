.class Lorg/chromium/content/browser/input/MonthPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/MonthPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/chromium/content/browser/input/MonthPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/MonthPicker$SavedState$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/MonthPicker$SavedState$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mYear:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mMonth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/chromium/content/browser/input/MonthPicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/MonthPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mYear:I

    iput p3, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mMonth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILorg/chromium/content/browser/input/MonthPicker$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/MonthPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/input/MonthPicker$SavedState;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/input/MonthPicker$SavedState;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mYear:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/chromium/content/browser/input/MonthPicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
