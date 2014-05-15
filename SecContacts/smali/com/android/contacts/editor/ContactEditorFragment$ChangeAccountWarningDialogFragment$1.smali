.class Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$500()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$600()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v2

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$700()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$800(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method
