.class Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;
.super Ljava/lang/Object;
.source "AutofillDialogFieldError.java"


# instance fields
.field final mErrorText:Ljava/lang/String;

.field final mFieldType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;->mFieldType:I

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogFieldError;->mErrorText:Ljava/lang/String;

    return-void
.end method
