.class Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$4;
.super Ljava/lang/Object;
.source "GroupMultipleDeletionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$4;->this$1:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e037c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$4;->this$1:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;

    iget-object v2, v2, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->access$500(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "deleteCompleted"

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/ContactSaveService;->createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
