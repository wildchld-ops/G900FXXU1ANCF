.class Lcom/android/mms/template/TextTemplateEditActivity$3;
.super Ljava/lang/Object;
.source "TextTemplateEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipShow()V
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

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateEditActivity$3;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity$3;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->HasKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity$3;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity$3;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #getter for: Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateEditActivity;->access$100(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
