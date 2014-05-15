.class Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;
.super Ljava/lang/Object;
.source "SbrowserCreditCardEditorUI.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentCardNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->mCurrentCardNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->mCurrentCardNumber:Ljava/lang/String;

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v5, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)Landroid/widget/EditText;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->mCurrentCardNumber:Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->access$100(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;->mCurrentCardNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
