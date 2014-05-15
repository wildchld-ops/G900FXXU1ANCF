.class public Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;
.super Landroid/app/DialogFragment;
.source "KnoxSelectionDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    new-instance v1, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;

    invoke-direct {v1}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {v1, p2}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "KnoxSelectionDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "KnoxSelectionDialogFragment"

    const-string v3, "IllegalStateException occurs."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v10, "personaIds"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    const-string v10, "contact_ids"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    new-instance v5, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;)V

    const v10, 0x7f0300d5

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f080233

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment$2;

    invoke-direct {v10, p0, v8, v2, v1}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;[I[JLandroid/app/AlertDialog$Builder;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f080234

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v10, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment$3;

    invoke-direct {v10, p0, v8, v2, v1}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;[I[JLandroid/app/AlertDialog$Builder;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0e0260

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v3
.end method
