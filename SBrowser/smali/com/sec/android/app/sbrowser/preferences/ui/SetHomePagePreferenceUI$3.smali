.class Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;
.super Ljava/lang/Object;
.source "SetHomePagePreferenceUI.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->promptForHomepage(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

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

    const/16 v3, 0x800

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
