.class public Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/samsung/contacts/interactions/InteractionContactDatas;

.field private mHideSetPrimary:Z

.field private mName:Ljava/lang/String;

.field private mPartition:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mdataInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;",
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

.method static synthetic access$000(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Lcom/samsung/contacts/interactions/DataBrowseListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/samsung/contacts/interactions/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;",
            "Lcom/samsung/contacts/interactions/InteractionContactDatas;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    const-string v4, "DataBrowseDialogContactsFragment"

    const-string v5, "show"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "contactDatas"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "name"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "uri"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "hidesetprimary"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;

    invoke-direct {v3}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {v3, v0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const-string v4, "DataBrowseDialogContactsFragment"

    invoke-virtual {p0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const-string v4, "DataBrowseDialogContactsFragment"

    invoke-virtual {v3, p0, v4}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
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
    .locals 14

    const/4 v13, 0x0

    const-string v8, "DataBrowseDialogContactsFragment"

    const-string v9, "onCreateDialog"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-boolean v13, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mChecked:Z

    const-string v8, "contactDatas"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mContactDatas:Lcom/samsung/contacts/interactions/InteractionContactDatas;

    const-string v8, "name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    const-string v8, "uri"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    const-string v8, "hidesetprimary"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mHideSetPrimary:Z

    iget-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mContactDatas:Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iget-object v8, v8, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mContactDatas:Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iget-object v8, v8, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mContactDatas:Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iget-object v8, v8, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    new-instance v8, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f03010c

    iget-object v11, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    new-instance v2, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f03006c

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080043

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f08017b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v8, 0x7f08017c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$2;

    invoke-direct {v8, p0, v5}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mAdapter:Lcom/samsung/contacts/interactions/DataBrowseListAdapter;

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v8, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mHideSetPrimary:Z

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const/high16 v8, 0x104

    new-instance v9, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$3;

    invoke-direct {v9, p0}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DataBrowseDialogContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "contactDatas"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mContactDatas:Lcom/samsung/contacts/interactions/InteractionContactDatas;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "name"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ischecked"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "uri"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "hidesetprimary"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->mHideSetPrimary:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
