.class public Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupMultipleDeletionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteDialogFragment"
.end annotation


# instance fields
.field private mDeleteGroupDialogTitle:Ljava/lang/String;

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static show(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)V
    .locals 3

    new-instance v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteGroup"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->getGroupsToDelete()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    const-string v1, "extraSelectedItemDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    const v1, 0x7f0e0370

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0e0371

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$1;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03010c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$1;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    new-instance v6, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extraSelectedItemDialog"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
