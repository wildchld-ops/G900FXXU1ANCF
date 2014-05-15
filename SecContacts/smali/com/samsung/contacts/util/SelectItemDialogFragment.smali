.class public final Lcom/samsung/contacts/util/SelectItemDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectItemDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static sListener:Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/util/SelectItemDialogFragment;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/util/SelectItemDialogFragment;->onItemSelected(IILjava/lang/String;)V

    return-void
.end method

.method private onItemSelected(IILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/SelectItemDialogFragment;->sListener:Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/util/SelectItemDialogFragment;->sListener:Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;->onItemChosen(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;IILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "title"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "items"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "data"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/contacts/util/SelectItemDialogFragment;->sListener:Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;

    new-instance v2, Lcom/samsung/contacts/util/SelectItemDialogFragment;

    invoke-direct {v2}, Lcom/samsung/contacts/util/SelectItemDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/samsung/contacts/util/SelectItemDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v3, "SelectItemDialogFragment"

    invoke-virtual {v2, p0, v3}, Lcom/samsung/contacts/util/SelectItemDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/util/SelectItemDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/util/SelectItemDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "type"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "data"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "items"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f03010c

    invoke-direct {v0, v9, v10, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v3, Lcom/samsung/contacts/util/SelectItemDialogFragment$1;

    invoke-direct {v3, p0, v4, v0, v8}, Lcom/samsung/contacts/util/SelectItemDialogFragment$1;-><init>(Lcom/samsung/contacts/util/SelectItemDialogFragment;Ljava/lang/String;Landroid/widget/ArrayAdapter;I)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v6
.end method
