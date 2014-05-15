.class Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
.super Ljava/lang/Object;
.source "DateTimeChooserAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private final mInputDialogContainer:Lorg/chromium/content/browser/input/InputDialogContainer;

.field private final mNativeDateTimeChooserAndroid:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:I

    new-instance v0, Lorg/chromium/content/browser/input/InputDialogContainer;

    new-instance v1, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;-><init>(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)V

    invoke-direct {v0, p1, v1}, Lorg/chromium/content/browser/input/InputDialogContainer;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mInputDialogContainer:Lorg/chromium/content/browser/input/InputDialogContainer;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->nativeReplaceDateTime(IIIIIIII)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->nativeCancelDialog(I)V

    return-void
.end method

.method private static createDateTimeChooser(Lorg/chromium/content/browser/ContentViewCore;IIIIIIII)Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;-><init>(Landroid/content/Context;I)V

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->showDialog(IIIIIII)V

    return-object v0
.end method

.method private static initializeDateInputTypes(IIIII)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/InputDialogContainer;->initializeInputTypes(IIIII)V

    return-void
.end method

.method private native nativeCancelDialog(I)V
.end method

.method private native nativeReplaceDateTime(IIIIIIII)V
.end method

.method private showDialog(IIIIIII)V
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mInputDialogContainer:Lorg/chromium/content/browser/input/InputDialogContainer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/content/browser/input/InputDialogContainer;->showDialog(IIIIIII)V

    return-void
.end method
