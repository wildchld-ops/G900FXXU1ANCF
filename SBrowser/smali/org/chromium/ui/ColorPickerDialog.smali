.class public Lorg/chromium/ui/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;,
        Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mInitialColor:I

.field private mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

    iput p3, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    new-instance v0, Lorg/chromium/ui/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/ColorPickerDialog$1;-><init>(Lorg/chromium/ui/ColorPickerDialog;)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/ColorPickerDialog;)I
    .locals 1

    iget v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/ColorPickerDialog;)Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog;->mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

    iget v3, p0, Lorg/chromium/ui/ColorPickerDialog;->mInitialColor:I

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;-><init>(Landroid/content/Context;Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    const-string v0, "Select Color"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
