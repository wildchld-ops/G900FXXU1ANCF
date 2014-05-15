.class Lorg/chromium/ui/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/chromium/ui/ColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/ColorPickerDialog$1;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog$1;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    #getter for: Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;
    invoke-static {v0}, Lorg/chromium/ui/ColorPickerDialog;->access$100(Lorg/chromium/ui/ColorPickerDialog;)Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$1;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    #getter for: Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I
    invoke-static {v1}, Lorg/chromium/ui/ColorPickerDialog;->access$000(Lorg/chromium/ui/ColorPickerDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    return-void
.end method
