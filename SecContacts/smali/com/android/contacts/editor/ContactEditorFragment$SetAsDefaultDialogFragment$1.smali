.class Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsHadChanges:Z

    sget v2, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mSaveMode:I

    sget-boolean v3, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->IsSaveSucceeded:Z

    sget-object v4, Lcom/android/contacts/editor/ContactEditorFragment$SetAsDefaultDialogFragment;->mContactLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveAction(ZIZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method
