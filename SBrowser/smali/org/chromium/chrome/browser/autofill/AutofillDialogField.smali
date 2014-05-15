.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogField;
.super Ljava/lang/Object;
.source "AutofillDialogField.java"


# instance fields
.field final mFieldType:I

.field final mNativePointer:I

.field final mPlaceholder:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mNativePointer:I

    iput p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mFieldType:I

    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mPlaceholder:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogField;->mValue:Ljava/lang/String;

    return-void
.end method
