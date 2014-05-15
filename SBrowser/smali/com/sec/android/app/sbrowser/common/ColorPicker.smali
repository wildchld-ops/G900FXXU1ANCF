.class public Lcom/sec/android/app/sbrowser/common/ColorPicker;
.super Landroid/app/Dialog;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;
    }
.end annotation


# static fields
.field private static final COLOR_GRID_COL_WIDTH:I = 0x50


# instance fields
.field mContentView:Lorg/chromium/content/browser/ContentView;

.field mContex:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/chromium/content/browser/ContentView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ColorPicker;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker;->mContentView:Lorg/chromium/content/browser/ContentView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker;->mContex:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04002a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/ColorPicker;->setContentView(I)V

    const v1, 0x7f0a010c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/ColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;-><init>(Lcom/sec/android/app/sbrowser/common/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ColorPicker$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/ColorPicker$1;-><init>(Lcom/sec/android/app/sbrowser/common/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ColorPicker$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/ColorPicker$2;-><init>(Lcom/sec/android/app/sbrowser/common/ColorPicker;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/ColorPicker;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
