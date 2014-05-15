.class public Lcom/samsung/contacts/group/GroupChangeOrderActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupChangeOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDoneButton:Landroid/widget/Button;

.field private mFragment:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

.field private mIsDoneButtonEnable:Z

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/GroupChangeOrderActivity;)Lcom/samsung/contacts/group/GroupChangeOrderListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mFragment:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/GroupChangeOrderActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method private adjustActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030063

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030062

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    goto :goto_0
.end method

.method private setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mFragment:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    new-instance v1, Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->setActionBarButtonUpdateListener(Lcom/samsung/contacts/listener/ButtonUpdateListener;)V

    return-void
.end method

.method private updateDoneButtonState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mIsDoneButtonEnable:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a7

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mFragment:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->adjustActionBar()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->setupActionListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;-><init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/group/GroupChangeOrderActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity$2;-><init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mDoneButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->mIsDoneButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
