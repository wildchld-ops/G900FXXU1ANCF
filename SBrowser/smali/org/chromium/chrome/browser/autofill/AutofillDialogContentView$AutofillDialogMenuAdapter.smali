.class Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutofillDialogContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutofillDialogMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

.field private mSection:I

.field protected mShouldShowCVC:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f040013

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mShouldShowCVC:Z

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mSection:I

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;)Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mSection:I

    return v0
.end method

.method private initView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040013

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mShouldShowCVC:Z

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;

    const v5, 0x7f0a00b6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f0a00b7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a00b8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a00b9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mLine1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mLine2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-eqz p4, :cond_7

    iget-boolean v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mShowButton:Z

    if-eqz v5, :cond_7

    iget v5, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mButtonLabelResourceId:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    new-instance v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;

    invoke-direct {v5, p0, p3, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_2
    return-object p2

    :cond_5
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mShouldShowCVC:Z

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mShouldShowCVC:Z

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->initView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->initView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemEditButtonClickedListener(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    return-void
.end method

.method protected shouldShowCVC()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mShouldShowCVC:Z

    return v0
.end method
