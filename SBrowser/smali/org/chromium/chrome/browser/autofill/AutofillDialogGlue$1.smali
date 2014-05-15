.class Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;
.super Ljava/lang/Object;
.source "AutofillDialogGlue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->dialogDismissed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->mNativeDialogPopup:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;)I

    move-result v1

    #calls: Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->nativeDialogDismissed(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;->access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogGlue;I)V

    :cond_0
    return-void
.end method
