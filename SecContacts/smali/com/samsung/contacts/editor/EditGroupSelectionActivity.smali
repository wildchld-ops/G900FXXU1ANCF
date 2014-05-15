.class public Lcom/samsung/contacts/editor/EditGroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "EditGroupSelectionActivity.java"

# interfaces
.implements Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDoneButtonStatus:Z

.field private mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

.field private mIsInsert:Z

.field private mRawContactId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mDoneButtonStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mIsInsert:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mRawContactId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)Lcom/samsung/contacts/editor/EditGroupSelectionFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    return-object v0
.end method

.method private buildActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030063

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030062

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0300bc

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->setContentView(I)V

    const v1, 0x7f08021a

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    iput-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    invoke-virtual {v1, p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->setListener(Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.RAWCONTACT_ID"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mRawContactId:J

    const-string v1, "android.intent.extra.EXTRA_IS_INSERT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mIsInsert:Z

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->buildActionBar()V

    return-void

    :cond_0
    const-string v1, "android.intent.extra.RAWCONTACT_ID"

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mRawContactId:J

    const-string v1, "android.intent.extra.EXTRA_IS_INSERT"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mIsInsert:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const v3, 0x7f080171

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$1;-><init>(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080172

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0e0295

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$2;-><init>(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDoneButtonStatusChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mDoneButtonStatus:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mDoneButtonStatus:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->invalidateOptionsMenu()V

    :cond_0
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
    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mDoneButtonStatus:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android.intent.extra.RAWCONTACT_ID"

    iget-wide v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "android.intent.extra.EXTRA_IS_INSERT"

    iget-boolean v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mIsInsert:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCreatedGroupChecked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->mFragment:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->setNewGroupTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
