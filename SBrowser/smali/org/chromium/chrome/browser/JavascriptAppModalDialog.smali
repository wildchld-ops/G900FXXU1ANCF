.class public Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.super Ljava/lang/Object;
.source "JavascriptAppModalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;,
        Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;,
        Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;,
        Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppAlertDialog;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mNativeDialogPointer:I

.field private mPrompTextView:Landroid/widget/TextView;

.field private mShouldShowSuppressCheckBox:Z

.field private mSuppressCheckBox:Landroid/widget/CheckBox;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->$assertionsDisabled:Z

    const-class v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mMessage:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mShouldShowSuppressCheckBox:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/JavascriptAppModalDialog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppAlertDialog;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppAlertDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createBeforeUnloadDialog(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppBeforeUnloadDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentDialogForTest()Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeGetCurrentModalDialog()Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    move-result-object v0

    return-object v0
.end method

.method private native nativeDidAcceptAppModalDialog(ILjava/lang/String;Z)V
.end method

.method private native nativeDidCancelAppModalDialog(IZ)V
.end method

.method private static native nativeGetCurrentModalDialog()Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeDidCancelAppModalDialog(IZ)V

    :cond_0
    return-void
.end method

.method public confirm(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeDidAcceptAppModalDialog(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method dismiss()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:I

    return-void
.end method

.method public getDialogForTest()Landroid/app/AlertDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getNegativeButtonText()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPositiveButtonText()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasNegativeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPositiveButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected button pressed in dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->onPositiveButtonClicked()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->onNegativeButtonClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNegativeButtonClicked()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->cancel(Z)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPrompTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->confirm(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method prepare(Landroid/view/ViewGroup;)V
    .locals 3

    const v1, 0x7f0a015f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0161

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mShouldShowSuppressCheckBox:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method showJavascriptAppModalDialog(Lorg/chromium/ui/WindowAndroid;I)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v4, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/WindowAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    iput p2, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:I

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f04004a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0161

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    const v4, 0x7f0a0160

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPrompTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->prepare(Landroid/view/ViewGroup;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$2;

    invoke-direct {v5, p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$2;-><init>(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;

    invoke-direct {v5, p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;-><init>(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->hasPositiveButton()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->getPositiveButtonText()I

    move-result v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->hasNegativeButton()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->getNegativeButtonText()I

    move-result v4

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
