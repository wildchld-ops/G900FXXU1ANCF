.class public Lcom/samsung/contacts/activities/ServiceNumbers;
.super Lcom/android/contacts/ContactsActivity;
.source "ServiceNumbers.java"


# instance fields
.field private mFragment:Lcom/samsung/contacts/preference/ServiceNumbersFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    iput-object p1, p0, Lcom/samsung/contacts/activities/ServiceNumbers;->mFragment:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x4

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbers;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbers;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    const v1, 0x7f0e02a6

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/activities/ServiceNumbers;->setTitle(I)V

    const v1, 0x7f03010f

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/activities/ServiceNumbers;->setContentView(I)V

    iget-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbers;->mFragment:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-direct {v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/activities/ServiceNumbers;->mFragment:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbers;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080036

    iget-object v3, p0, Lcom/samsung/contacts/activities/ServiceNumbers;->mFragment:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/ServiceNumbers;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
