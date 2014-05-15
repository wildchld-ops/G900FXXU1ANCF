.class Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;
.super Ljava/lang/Object;
.source "ColorChooserAndroid.java"

# interfaces
.implements Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;-><init>(ILandroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    #getter for: Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lorg/chromium/ui/ColorPickerDialog;
    invoke-static {v0}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->access$000(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)Lorg/chromium/ui/ColorPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/ColorPickerDialog;->dismiss()V

    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    iget-object v1, p0, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;->this$0:Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    #getter for: Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:I
    invoke-static {v1}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->access$100(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)I

    move-result v1

    #calls: Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->nativeOnColorChosen(II)V
    invoke-static {v0, v1, p1}, Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->access$200(Lorg/chromium/components/web_contents_delegate_android/ColorChooserAndroid;II)V

    return-void
.end method
