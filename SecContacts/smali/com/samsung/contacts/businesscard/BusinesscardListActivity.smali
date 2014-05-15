.class public Lcom/samsung/contacts/businesscard/BusinesscardListActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "BusinesscardListActivity.java"

# interfaces
.implements Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;


# static fields
.field private static mMenuCapture:Landroid/view/MenuItem;

.field private static mMenuDelete:Landroid/view/MenuItem;

.field private static mMenuOrderby:Landroid/view/MenuItem;


# instance fields
.field private mCount:I

.field private mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

.field mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/businesscard/BusinesscardListActivity;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    return-object v0
.end method

.method private buildDialog(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0e0421

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0e0422

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const v3, 0x7f0e011d

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0e0131

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListActivity;)V

    invoke-virtual {v2, v1, p1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v1, p3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->onPickerResult(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->clearSearchViewFocus()V

    return-void
.end method

.method public onCountChanged(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mCount:I

    sget-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    iget v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mCount:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    sget-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    iget v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mCount:I

    if-lez v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e041f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-direct {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080046

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getBusinesscardSortOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setBusinesscardSortOrder(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080304

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v1, 0x7f080305

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    const v1, 0x7f080303

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuCapture:Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuCapture:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onDeleteRequested()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->finish()V

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mListFragment:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v2, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->startActionMode(Z)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.bcocr"

    const-string v3, "com.sec.android.app.bcocr.OCR"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "OCR_NAMECARD_CAPTURE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mPreference:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getBusinesscardSortOrder()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->buildDialog(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080303 -> :sswitch_2
        0x7f080304 -> :sswitch_1
        0x7f080305 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    iget v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mCount:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    sget-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    iget v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->mCount:I

    if-lez v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
