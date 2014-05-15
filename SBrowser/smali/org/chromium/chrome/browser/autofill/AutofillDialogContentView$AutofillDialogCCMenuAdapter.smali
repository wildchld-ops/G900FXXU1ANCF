.class Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;
.super Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;
.source "AutofillDialogContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutofillDialogCCMenuAdapter"
.end annotation


# instance fields
.field private mCVCHint:Ljava/lang/String;

.field private mCVCIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;->mCVCHint:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;->mCVCIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;->shouldShowCVC()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const v2, 0x7f0a00ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;->mCVCHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;->mCVCHint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;->mCVCIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
