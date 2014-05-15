.class Lcom/android/mms/settings/SignatureEditActivity$4;
.super Ljava/lang/Object;
.source "SignatureEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/SignatureEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/SignatureEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/SignatureEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/SignatureEditActivity$4;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

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
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity$4;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

    iget-object v1, p0, Lcom/android/mms/settings/SignatureEditActivity$4;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

    #getter for: Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/settings/SignatureEditActivity;->access$100(Lcom/android/mms/settings/SignatureEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/settings/SignatureEditActivity;->updateTextCounter(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity$4;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

    #getter for: Lcom/android/mms/settings/SignatureEditActivity;->mEditSignature:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/SignatureEditActivity;->access$100(Lcom/android/mms/settings/SignatureEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mms/settings/SignatureEditActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
