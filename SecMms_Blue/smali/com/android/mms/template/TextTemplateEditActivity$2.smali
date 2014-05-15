.class Lcom/android/mms/template/TextTemplateEditActivity$2;
.super Ljava/lang/Object;
.source "TextTemplateEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$100(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$200(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    const v3, 0x7f0c0217

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/template/TextTemplateEditActivity;->access$202(Lcom/android/mms/template/TextTemplateEditActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$200(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$200(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$200(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    const v2, 0x7f0c0219

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.TEMPLATE"

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateEditActivity;->access$100(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/template/TextTemplateEditActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #calls: Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$000(Lcom/android/mms/template/TextTemplateEditActivity;)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$2;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->finish()V

    goto :goto_0
.end method
