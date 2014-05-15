.class public Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddToRejectListTipsDialogFragment.java"


# instance fields
.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->neverShowAddToRejectListTipsAgain(Landroid/content/Context;)V

    return-void
.end method

.method private addToRejectList(Landroid/app/Activity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    invoke-static {p1, v0, p2}, Lcom/samsung/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/samsung/contacts/interactions/AddToRejectListInteraction;

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private neverShowAddToRejectListTipsAgain(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showAddToRejectListTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setContactUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method public static shouldShowAddToRejectListTips(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showAddToRejectListTips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 3

    new-instance v0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;-><init>()V

    invoke-direct {v0, p2}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->setContactUri(Landroid/net/Uri;)V

    if-eqz p3, :cond_1

    const-string v1, "AddToRejectListTipsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "AddToRejectListTipsDialogFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->addToRejectList(Landroid/app/Activity;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p1, :cond_1

    const-string v4, "isCheckBoxChecked"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    const-string v4, "contactUri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    :goto_1
    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e031d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "isCheckBoxChecked"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
