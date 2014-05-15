.class Lcom/android/phone/UsCdmaCallForwardingDialog$13;
.super Ljava/lang/Object;
.source "UsCdmaCallForwardingDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    iget-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$600(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/UsCdmaCallForwardingDialog;->isCFButtonEnabled(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$900(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$1000()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$600(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$13;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$600(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$1000()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
