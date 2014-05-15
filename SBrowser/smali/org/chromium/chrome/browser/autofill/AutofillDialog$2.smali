.class Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;
.super Ljava/lang/Object;
.source "AutofillDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialog;->addTextWatcher(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mDelegate:Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialog;->mFocusedFieldNativePointer:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialog$2;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;->editedOrActivatedField(ILorg/chromium/ui/ViewAndroidDelegate;Ljava/lang/String;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
