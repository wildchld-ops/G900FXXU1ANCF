.class Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;
.super Ljava/lang/Object;
.source "AutofillDialogNotification.java"


# instance fields
.field final mBackgroundColor:I

.field final mChecked:Z

.field final mHasArrow:Z

.field final mHasCheckbox:Z

.field final mInteractive:Z

.field final mText:Ljava/lang/String;

.field final mTextColor:I

.field final mType:I


# direct methods
.method public constructor <init>(IIIZZZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mType:I

    iput p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mBackgroundColor:I

    iput p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mTextColor:I

    iput-boolean p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mHasArrow:Z

    iput-boolean p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mHasCheckbox:Z

    iput-boolean p6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mChecked:Z

    iput-boolean p7, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mInteractive:Z

    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogNotification;->mText:Ljava/lang/String;

    return-void
.end method
