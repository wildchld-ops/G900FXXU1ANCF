.class Lcom/android/mms/template/TextTemplateEditActivity$4;
.super Ljava/lang/Object;
.source "TextTemplateEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateEditActivity;
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

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateEditActivity$4;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

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

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity$4;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$4;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$100(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateEditActivity;->updateTextCounter(Ljava/lang/CharSequence;)V

    return-void
.end method
