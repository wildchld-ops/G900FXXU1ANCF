.class public Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionEmergencyMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$1;,
        Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;
    }
.end annotation


# instance fields
.field private final GROUPS_PICKER_TAG:Ljava/lang/String;

.field private mContactsCount:I

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

.field private mIsRecreatedInstance:Z

.field private mMaxContactsNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const-string v0, "emergencyMessageTag"

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->GROUPS_PICKER_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mContactsCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private updateFragment()V
    .locals 4

    const-string v2, "InteractionEmergencyMessageActivity"

    const-string v3, "updateFragment"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "InteractionEmergencyMessageActivity"

    const-string v3, "mInteractionGroupMemberPickerFragment null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->configureListFragment()V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public actionBarSetup()Landroid/app/ActionBar;
    .locals 2

    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const v1, 0x7f0e039f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const v1, 0x7f0300c6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_0
    return-object v0
.end method

.method public configureListFragment()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "InteractionEmergencyMessageActivity"

    const-string v1, "configureListFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    new-instance v1, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;-><init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setListener(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$Listener;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    iget v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->setMaxContactsNumber(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mIsRecreatedInstance:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "max_contacts_number"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I

    const v2, 0x7f030053

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->actionBarSetup()Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "emergencyMessageTag"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    iput-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-direct {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    const v2, 0x7f080036

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    const-string v4, "emergencyMessageTag"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->configureListFragment()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080304

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->startActionMode()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080304 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "InteractionEmergencyMessageActivity"

    const-string v2, "onPrepareOptionsMenu"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    iget v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->mContactsCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "InteractionEmergencyMessageActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageActivity;->updateFragment()V

    return-void
.end method
