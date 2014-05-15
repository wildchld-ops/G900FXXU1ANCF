.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;
.super Ljava/lang/Object;
.source "AutofillDialogGlue.java"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;
.implements Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "autofill"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccountHelper:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

.field private final mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

.field private mNativeDialogPopup:I

.field private mViewAndroid:Lorg/chromium/ui/ViewAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILorg/chromium/ui/WindowAndroid;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    invoke-virtual {p2}, Lorg/chromium/ui/WindowAndroid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper$SignInContinuation;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAccountHelper:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {p2}, Lorg/chromium/ui/WindowAndroid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    new-instance v0, Lorg/chromium/ui/ViewAndroid;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-direct {v0, p2, v1}, Lorg/chromium/ui/ViewAndroid;-><init>(Lorg/chromium/ui/WindowAndroid;Lorg/chromium/ui/ViewAndroidDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mViewAndroid:Lorg/chromium/ui/ViewAndroid;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;)I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeDialogDismissed(I)V

    return-void
.end method

.method private static addToAutofillDialogFieldArray([Lorg/chromium/chrome/browser/autofill/AutofillDialogField;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static addToAutofillDialogFieldErrorArray([Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;IILjava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;

    invoke-direct {v0, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;-><init>(ILjava/lang/String;)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static addToAutofillDialogMenuItemArray([Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v6, -0x1

    packed-switch p5, :pswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const v6, 0x7f0c0090

    :cond_0
    :goto_0
    :pswitch_1
    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;

    if-eqz p5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/graphics/Bitmap;)V

    aput-object v0, p0, p1

    return-void

    :pswitch_2
    const v6, 0x7f0c0091

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static addToAutofillDialogNotificationArray([Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;IIIIZZZZLjava/lang/String;)V
    .locals 9
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;-><init>(IIIZZZZLjava/lang/String;)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static create(ILorg/chromium/ui/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;-><init>(ILorg/chromium/ui/WindowAndroid;)V

    return-object v0
.end method

.method private static createAutofillDialogFieldArray(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-array v0, p0, [Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    return-object v0
.end method

.method private static createAutofillDialogFieldError(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-array v0, p0, [Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;

    return-object v0
.end method

.method private static createAutofillDialogMenuItemArray(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-array v0, p0, [Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;

    return-object v0
.end method

.method private static createAutofillDialogNotificationArray(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-array v0, p0, [Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->dismissAutofillDialog()V

    return-void
.end method

.method private getCvc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getCvc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFieldNativePointer(Lorg/chromium/chrome/browser/autofill/AutofillDialogField;)I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mNativePointer:I

    return v0
.end method

.method private static getFieldValue(Lorg/chromium/chrome/browser/autofill/AutofillDialogField;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getSection(I)[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;

    move-result-object v0

    return-object v0
.end method

.method private getUserAccountNames()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAccountHelper:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->getAccountNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private modelChanged(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->modelChanged(Z)V

    return-void
.end method

.method private native nativeAccountSelected(II)V
.end method

.method private native nativeContinueAutomaticSignin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeDialogCancel(I)V
.end method

.method private native nativeDialogDismissed(I)V
.end method

.method private native nativeDialogSubmit(I)V
.end method

.method private native nativeEditedOrActivatedField(IIILjava/lang/String;Z)V
.end method

.method private native nativeEditingCancel(II)V
.end method

.method private native nativeEditingComplete(II)Z
.end method

.method private native nativeEditingStart(II)V
.end method

.method private native nativeGetDialogButtonText(II)Ljava/lang/String;
.end method

.method private native nativeGetIconForField(IILjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetLabelForSection(II)Ljava/lang/String;
.end method

.method private native nativeGetLegalDocumentsText(I)Ljava/lang/String;
.end method

.method private native nativeGetListForField(II)[Ljava/lang/String;
.end method

.method private native nativeGetPlaceholderForField(III)Ljava/lang/String;
.end method

.method private native nativeGetProgressBarText(I)Ljava/lang/String;
.end method

.method private native nativeGetSaveLocallyText(I)Ljava/lang/String;
.end method

.method private native nativeIsDialogButtonEnabled(II)Z
.end method

.method private native nativeIsTheAddItem(III)Z
.end method

.method private native nativeItemSelected(III)V
.end method

.method private native nativeNotificationCheckboxStateChanged(IIZ)V
.end method

.method private native nativeValidateField(IILjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeValidateSection(II)V
.end method

.method private onDestroy()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->dismissAutofillDialog()V

    goto :goto_0
.end method

.method private shouldSaveDetailsLocally()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->shouldSaveDetailsLocally()Z

    move-result v0

    return v0
.end method

.method private startAutomaticSignIn(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAccountHelper:Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogAccountHelper;->startTokensGeneration(Ljava/lang/String;)V

    return-void
.end method

.method private updateAccountChooser([Ljava/lang/String;I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateAccountChooser([Ljava/lang/String;I)V

    return-void
.end method

.method private updateNotificationArea([Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateNotificationArea([Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;)V

    goto :goto_0
.end method

.method private updateProgressBar(D)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateProgressBar(D)V

    return-void
.end method

.method private updateSaveLocallyCheckBox(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateSaveLocallyCheckBox(Z)V

    return-void
.end method

.method private updateSection(IZ[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;[Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;IZI)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateSection(IZ[Lorg/chromium/chrome/browser/autofill/AutofillDialogField;[Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;IZI)V

    return-void
.end method

.method private updateSectionErrors(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mAutofillDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->updateSectionErrors(I[Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;)V

    return-void
.end method


# virtual methods
.method public accountSelected(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeAccountSelected(II)V

    return-void
.end method

.method public dialogCancel()V
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeDialogCancel(I)V

    goto :goto_0
.end method

.method public dialogDismissed()V
    .locals 2

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dialogSubmit()V
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeDialogSubmit(I)V

    goto :goto_0
.end method

.method public editedOrActivatedField(ILorg/chromium/ui/ViewAndroidDelegate;Ljava/lang/String;Z)V
    .locals 6

    iget v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mViewAndroid:Lorg/chromium/ui/ViewAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/ViewAndroid;->getNativePointer()I

    move-result v3

    move-object v0, p0

    move v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeEditedOrActivatedField(IIILjava/lang/String;Z)V

    return-void
.end method

.method public editingCancel(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeEditingCancel(II)V

    return-void
.end method

.method public editingComplete(I)Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeEditingComplete(II)Z

    move-result v0

    return v0
.end method

.method public editingStart(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeEditingStart(II)V

    return-void
.end method

.method public getDialogButtonText(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetDialogButtonText(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconForField(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetIconForField(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLabelForSection(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetLabelForSection(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegalDocumentsText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetLegalDocumentsText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListForField(I)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetListForField(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderForField(II)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetPlaceholderForField(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetProgressBarText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaveLocallyText()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeGetSaveLocallyText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDialogButtonEnabled(I)Z
    .locals 1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeIsDialogButtonEnabled(II)Z

    move-result v0

    goto :goto_0
.end method

.method public isTheAddItem(II)Z
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeIsTheAddItem(III)Z

    move-result v0

    return v0
.end method

.method public itemSelected(II)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeItemSelected(III)V

    return-void
.end method

.method public notificationCheckboxStateChanged(IZ)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeNotificationCheckboxStateChanged(IIZ)V

    return-void
.end method

.method public onTokensGenerationFailure()V
    .locals 4

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeContinueAutomaticSignin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTokensGenerationSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeContinueAutomaticSignin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validateField(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeValidateField(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateSection(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeValidateSection(II)V

    return-void
.end method
