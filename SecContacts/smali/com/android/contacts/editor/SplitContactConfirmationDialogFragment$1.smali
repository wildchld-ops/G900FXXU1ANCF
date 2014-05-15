.class Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "SplitContactConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    #getter for: Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J
    invoke-static {v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->access$000(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    #getter for: Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J
    invoke-static {v3}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->access$100(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    #getter for: Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mShouldDestroyLoader:Z
    invoke-static {v5}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->access$200(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;->onSplitContactConfirmed(JJZ)V

    return-void
.end method
