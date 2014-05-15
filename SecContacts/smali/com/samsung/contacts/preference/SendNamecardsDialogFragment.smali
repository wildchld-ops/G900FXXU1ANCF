.class public final Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SendNamecardsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;
    }
.end annotation


# instance fields
.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSendContactType:Landroid/widget/TextView;

.field private mSendType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->setSendContactType(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendContactType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendContactType:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mRadioButton:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendType:I

    return v0
.end method

.method private setSendContactType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/preference/ContactsPreferences;->setSendContactType(I)V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;-><init>()V

    const-string v1, "SendNamecardsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "SendNamecardsDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendType:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;-><init>(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)V

    new-instance v2, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$1;-><init>(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)V

    new-instance v1, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$2;-><init>(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e02a7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
