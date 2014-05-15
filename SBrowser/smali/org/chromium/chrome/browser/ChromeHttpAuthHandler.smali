.class public Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
.super Ljava/lang/Object;
.source "ChromeHttpAuthHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

.field private mAutofillPassword:Ljava/lang/String;

.field private mAutofillUsername:Ljava/lang/String;

.field private final mNativeChromeHttpAuthHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    return-void
.end method

.method private static create(I)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;-><init>(I)V

    return-object v0
.end method

.method private native nativeCancelAuth(I)V
.end method

.method private native nativeGetCancelButtonText(I)Ljava/lang/String;
.end method

.method private native nativeGetMessageBody(I)Ljava/lang/String;
.end method

.method private native nativeGetMessageTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetOkButtonText(I)Ljava/lang/String;
.end method

.method private native nativeGetPasswordLabelText(I)Ljava/lang/String;
.end method

.method private native nativeGetUsernameLabelText(I)Ljava/lang/String;
.end method

.method private native nativeSetAuth(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;->onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeCancelAuth(I)V

    return-void
.end method

.method public getCancelButtonText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetCancelButtonText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetMessageBody(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetMessageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOkButtonText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetOkButtonText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordLabelText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetPasswordLabelText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsernameLabelText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetUsernameLabelText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeSetAuth(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutofillObserver(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;)V
    .locals 3

    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;->onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
