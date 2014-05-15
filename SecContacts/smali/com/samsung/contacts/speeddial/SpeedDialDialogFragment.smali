.class public final Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;
.super Landroid/app/DialogFragment;
.source "SpeedDialDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static mIsTutorialMode:Z

.field private static mSelectedNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->mSelectedNumber:I

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$Listener;IZ)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;-><init>()V

    sput p2, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->mSelectedNumber:I

    sput-boolean p3, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->mIsTutorialMode:Z

    const-string v1, "SpeedDialDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$1;

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f03010c

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$1;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    const v4, 0x7f0e028e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v4, 0x7f0e0290

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$2;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0335

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$3;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v3
.end method
