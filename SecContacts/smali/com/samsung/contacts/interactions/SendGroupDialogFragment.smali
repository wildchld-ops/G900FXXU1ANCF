.class public Lcom/samsung/contacts/interactions/SendGroupDialogFragment;
.super Landroid/app/DialogFragment;
.source "SendGroupDialogFragment.java"


# instance fields
.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mGroupType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)Lcom/samsung/contacts/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupType:I

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "groupInfo"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v3, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;

    invoke-direct {v3}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {v3, v0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "SendDialogFragment"

    invoke-virtual {p0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const-string v4, "SendDialogFragment"

    invoke-virtual {v3, p0, v4}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const-string v6, "groupInfo"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v6, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    iget-object v6, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/contacts/util/GroupUtils;->parseGroupType(Lcom/samsung/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->mGroupType:I

    new-instance v1, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$1;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f03010c

    invoke-direct {v1, p0, v6, v7, v5}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    const v6, 0x7f0e027d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v6, 0x7f0e025e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    new-instance v4, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0e025c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/SendGroupDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method
