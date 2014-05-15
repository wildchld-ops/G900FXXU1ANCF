.class Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;
.super Ljava/lang/Object;
.source "ChangeAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/high16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "authorities"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.android.contacts"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->access$100()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$2;->this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;
    invoke-static {v2}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->access$200(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;)Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$Listener;->getEditorUtils()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->access$102(Lcom/android/contacts/editor/ContactEditorUtils;)Lcom/android/contacts/editor/ContactEditorUtils;

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "authorities"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.android.contacts"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "account_types"

    invoke-static {}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->access$100()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/editor/ContactEditorUtils;->getWritableAccountTypeStrings()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
