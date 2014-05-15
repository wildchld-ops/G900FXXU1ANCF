.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;
.super Landroid/widget/FrameLayout;
.source "AutofillDialogTitleView.java"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->mAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public hideLogoAndAccountChooserVisibility()V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAccountChooserEnabled(Z)V
    .locals 3

    const v2, 0x7f0a0087

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v2, 0x7f0a0086

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 2

    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public updateAccountsAndSelect(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    const v4, 0x7f0a0087

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    if-ltz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    const v4, 0x7f0a0086

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->hideLogoAndAccountChooserVisibility()V

    goto :goto_2
.end method
