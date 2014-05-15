.class public Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
.super Ljava/lang/Object;
.source "ColorChooserAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "components"
.end annotation


# instance fields
.field private final mDialog:Lorg/chromium/ui/ColorPickerDialog;

.field private final mNativeColorChooserAndroid:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;-><init>(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)V

    iput p1, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:I

    new-instance v1, Lorg/chromium/ui/ColorPickerDialog;

    invoke-direct {v1, p2, v0, p3}, Lorg/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;I)V

    iput-object v1, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)Lorg/chromium/ui/ColorPickerDialog;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)I
    .locals 1

    iget v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->nativeOnColorChosen(II)V

    return-void
.end method

.method public static createColorChooserAndroid(ILorg/chromium/content/browser/ContentViewCore;I)Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;-><init>(ILandroid/content/Context;I)V

    invoke-direct {v0}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->openColorChooser()V

    return-object v0
.end method

.method private native nativeOnColorChosen(II)V
.end method

.method private openColorChooser()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    invoke-virtual {v0}, Lorg/chromium/ui/ColorPickerDialog;->show()V

    return-void
.end method


# virtual methods
.method public closeColorChooser()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;

    invoke-virtual {v0}, Lorg/chromium/ui/ColorPickerDialog;->dismiss()V

    return-void
.end method
