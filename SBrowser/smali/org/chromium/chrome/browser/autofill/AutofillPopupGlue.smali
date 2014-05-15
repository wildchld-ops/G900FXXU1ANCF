.class public Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;
.super Ljava/lang/Object;
.source "AutofillPopupGlue.java"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "autofill"
.end annotation


# instance fields
.field private final mAutofillPopup:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

.field private mNativeAutofillPopup:I


# direct methods
.method public constructor <init>(ILorg/chromium/ui/WindowAndroid;Lorg/chromium/ui/ViewAndroidDelegate;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    invoke-virtual {p2}, Lorg/chromium/ui/WindowAndroid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;-><init>(Landroid/content/Context;Lorg/chromium/ui/ViewAndroidDelegate;Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mAutofillPopup:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    return-void
.end method

.method private static addToAutofillSuggestionArray([Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;

    invoke-direct {v0, p2, p3, p4}, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static create(ILorg/chromium/ui/WindowAndroid;Lorg/chromium/ui/ViewAndroid;)Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;

    invoke-virtual {p2}, Lorg/chromium/ui/ViewAndroid;->getViewAndroidDelegate()Lorg/chromium/ui/ViewAndroidDelegate;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;-><init>(ILorg/chromium/ui/WindowAndroid;Lorg/chromium/ui/ViewAndroidDelegate;)V

    return-object v0
.end method

.method private static createAutofillSuggestionArray(I)[Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-array v0, p0, [Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;

    return-object v0
.end method

.method private hide()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mAutofillPopup:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->hide()V

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeRequestHide(I)V
.end method

.method private native nativeSuggestionSelected(II)V
.end method

.method private setAnchorRect(FFFF)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mAutofillPopup:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->setAnchorRect(FFFF)V

    return-void
.end method

.method private show([Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mAutofillPopup:Lorg/chromium/chrome/browser/autofill/AutofillPopup;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->show([Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;)V

    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->nativeDestroy(I)V

    :cond_0
    return-void
.end method

.method onNativeDestroyed()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    return-void
.end method

.method public requestHide()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->nativeRequestHide(I)V

    :cond_0
    return-void
.end method

.method public suggestionSelected(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->mNativeAutofillPopup:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillPopupGlue;->nativeSuggestionSelected(II)V

    :cond_0
    return-void
.end method
