.class Lcom/android/settings/wifi/WifiVzwDialog$2;
.super Ljava/lang/Object;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiVzwDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiVzwDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiVzwDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/16 v3, 0x40

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    #getter for: Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    const v5, 0x7f0903e4

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v1, v7, :cond_3

    const/16 v1, 0x8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_4

    const/16 v1, 0xc8

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;
    invoke-static {v4, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$102(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    #getter for: Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    #getter for: Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    #getter for: Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$2;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    #getter for: Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method
