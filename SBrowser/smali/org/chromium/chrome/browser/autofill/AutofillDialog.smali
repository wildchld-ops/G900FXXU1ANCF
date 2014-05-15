.class public Lorg/chromium/chrome/browser/autofill/AutofillDialog;
.super Landroid/app/AlertDialog;
.source "AutofillDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lorg/chromium/ui/ViewAndroidDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAutofillSectionFieldData:[[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

.field private final mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

.field private mCurrentTextWatcher:Landroid/text/TextWatcher;

.field private final mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

.field private mFocusedField:Landroid/widget/EditText;

.field private mFocusedFieldNativePointer:I

.field private final mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;)V
    .locals 11

    const/16 v10, 0x3b

    const/4 v9, 0x1

    const/4 v8, 0x5

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-array v5, v8, [[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    iput-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mAutofillSectionFieldData:[[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    new-instance v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {v5, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->setCustomTitle(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04000c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    iput-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v5, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->setAutofillDialog(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)V

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getSaveLocallyCheckBox()Landroid/widget/CheckBox;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v6}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getSaveLocallyText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getSaveLocallyCheckBox()Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-array v3, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v5, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getLabelForSection(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v5, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->initializeLabelsForEachSection([Ljava/lang/String;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->setView(Landroid/view/View;)V

    const/4 v5, -0x2

    iget-object v6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getDialogButtonText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v5, -0x1

    iget-object v6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v6, v9}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getDialogButtonText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v5, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v5, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->setOnItemEditButtonClickedListener(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v10}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getPlaceholderForField(II)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    const-string v6, ""

    invoke-interface {v5, v10, v6}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getIconForField(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v5, v0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->setCVCInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedFieldNativePointer:I

    return v0
.end method

.method private addTextWatcher(Landroid/widget/EditText;I)V
    .locals 1

    iput p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedFieldNativePointer:I

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mCurrentTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mCurrentTextWatcher:Landroid/text/TextWatcher;

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mCurrentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private changeLayoutTo(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->changeLayoutTo(I)V

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateButtons(I)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private clearAutofillSectionFieldValues(I)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getFieldsForSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    iget v6, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    invoke-static {p1, v6}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Landroid/widget/EditText;

    if-eqz v6, :cond_3

    check-cast v1, Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    instance-of v6, v1, Landroid/widget/Spinner;

    if-eqz v6, :cond_2

    check-cast v1, Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelected(Z)V

    goto :goto_1
.end method

.method private disableButtons()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->setAccountChooserEnabled(Z)V

    return-void
.end method

.method private getFieldsForSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mAutofillSectionFieldData:[[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mAutofillSectionFieldData:[[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getSaveLocallyCheckBox()Landroid/widget/CheckBox;
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private internalDismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->dialogDismissed()V

    return-void
.end method

.method private isTheAddItem(Landroid/widget/AdapterView;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v0, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->isTheAddItem(II)Z

    move-result v0

    return v0
.end method

.method private setFieldsForSection(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mAutofillSectionFieldData:[[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mAutofillSectionFieldData:[[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method private updateButtons(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const v2, 0x7f0c022f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x7f0c022e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {v2, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->setAccountChooserEnabled(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getDialogButtonText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->isDialogButtonEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getDialogButtonText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {v2, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->setAccountChooserEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getDialogButtonText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->isDialogButtonEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getDialogButtonText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->isDialogButtonEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->setAccountChooserEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public acquireAnchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedField:Landroid/widget/EditText;

    return-object v0
.end method

.method public clearAutofillSectionFieldData(I)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getFieldsForSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    const-string v5, ""

    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->setValue(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public dismissAutofillDialog()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->internalDismiss()V

    return-void
.end method

.method public getCvc()Ljava/lang/String;
    .locals 2

    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getListForField(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getListForField(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;
    .locals 9

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getFieldsForSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    move-object v0, v4

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    iget v8, v3, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    invoke-static {p1, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v2, ""

    instance-of v8, v1, Landroid/widget/EditText;

    if-eqz v8, :cond_4

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v8, v1, Landroid/widget/Spinner;

    if-eqz v8, :cond_3

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    goto :goto_2

    :cond_5
    const-string v2, ""

    goto :goto_3
.end method

.method public modelChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->changeLayoutTo(I)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->hideLogoAndAccountChooserVisibility()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->changeLayoutTo(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->isInEditingMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->dialogSubmit()V

    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->disableButtons()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->dialogCancel()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getCurrentSection()I

    move-result v0

    sget-boolean v1, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-ne v0, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    if-ne p2, v2, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->editingComplete(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->changeLayoutTo(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->editingCancel(I)V

    goto :goto_2
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->isInEditingMode()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    move-object/from16 v3, p1

    check-cast v3, Landroid/widget/EditText;

    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mCurrentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getCurrentSection()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getFieldsForSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    const/4 v10, 0x0

    move-object v1, v7

    array-length v9, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v5, v1, v8

    iget v12, v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    invoke-static {v11, v12}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v6, v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    iget v10, v5, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mNativePointer:I

    :cond_3
    sget-boolean v12, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->$assertionsDisabled:Z

    if-nez v12, :cond_5

    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    if-eq v6, v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->addTextWatcher(Landroid/widget/EditText;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedFieldNativePointer:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedField:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v12, v13, v0, v14, v15}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->editedOrActivatedField(ILorg/chromium/ui/ViewAndroidDelegate;Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v6, v13}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->validateField(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v12, v11}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->validateSection(I)V

    goto/16 :goto_0
.end method

.method public onItemEditButtonClicked(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->updateMenuSelectionForSection(II)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->itemSelected(II)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->editingStart(I)V

    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getLayoutModeForSection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->changeLayoutTo(I)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    const v2, 0x7f0a0087

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->accountSelected(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getSectionForSpinnerID(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->isTheAddItem(Landroid/widget/AdapterView;II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1, v0, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->itemSelected(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->onItemEditButtonClicked(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public releaseAnchorView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 0

    return-void
.end method

.method public shouldSaveDetailsLocally()Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getSaveLocallyCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->createAdapters()V

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateAccountChooser([Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mTitleView:Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogTitleView;->updateAccountsAndSelect(Ljava/util/List;I)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->getLegalDocumentsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->updateLegalDocumentsText(Ljava/lang/String;)V

    return-void
.end method

.method public updateNotificationArea([Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;)V
    .locals 12

    const/4 v11, 0x0

    const v9, 0x7f0a00a4

    invoke-virtual {p0, v9}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v9, 0x7f0a00a5

    invoke-virtual {p0, v9}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    iget-boolean v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mHasArrow:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mHasCheckbox:Z

    if-eqz v9, :cond_0

    iget v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mBackgroundColor:I

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    iget v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mTextColor:I

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mText:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mInteractive:Z

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mChecked:Z

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget v8, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mType:I

    new-instance v9, Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;

    invoke-direct {v9, p0, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialog;I)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mBackgroundColor:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mTextColor:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, v4, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mText:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900d8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v5, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900dd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateProgressBar(D)V
    .locals 0

    return-void
.end method

.method public updateSaveLocallyCheckBox(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getSaveLocallyCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateSection(IZ[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;[Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;IZI)V
    .locals 11

    const/4 v4, 0x0

    :goto_0
    array-length v7, p3

    if-ge v4, v7, :cond_6

    aget-object v7, p3, v4

    iget v7, v7, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    invoke-static {p1, v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v7, v2, Landroid/widget/EditText;

    if-eqz v7, :cond_4

    move-object v1, v2

    check-cast v1, Landroid/widget/EditText;

    if-nez p6, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, p3, v4

    iget v7, v7, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    move/from16 v0, p7

    if-eq v7, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->containsCreditCardInfo(I)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, p3, v4

    iget v7, v7, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v9}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getCVCDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    aget-object v7, p3, v4

    iget-object v7, v7, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mPlaceholder:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    aget-object v7, p3, v4

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    instance-of v7, v2, Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/Spinner;

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    aget-object v8, p3, v4

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_5
    aget-object v7, p3, v4

    iget-object v7, v7, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mPlaceholder:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->setFieldsForSection(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;)V

    iget-object v7, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v7, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->setVisibilityForSection(IZ)V

    move/from16 v0, p5

    invoke-virtual {p0, p1, p4, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateSectionMenuItems(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;I)V

    return-void
.end method

.method public updateSectionErrors(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;)V
    .locals 11

    const/4 v10, 0x0

    const v9, 0x7f0a00a2

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getFieldsForSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v0, v4

    array-length v7, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    iget v8, v3, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    invoke-static {p1, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v8, v1, Landroid/widget/EditText;

    if-eqz v8, :cond_1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    instance-of v8, v1, Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move-object v0, p2

    array-length v7, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v2, v0, v5

    iget v8, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;->mFieldType:I

    invoke-static {p1, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v8, v1, Landroid/widget/EditText;

    if-eqz v8, :cond_4

    check-cast v1, Landroid/widget/EditText;

    iget-object v8, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;->mErrorText:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    instance-of v8, v1, Landroid/widget/Spinner;

    if-eqz v8, :cond_3

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;->mErrorText:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public updateSectionMenuItems(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mContentView:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->updateMenuItemsForSection(ILjava/util/List;I)V

    return-void
.end method
