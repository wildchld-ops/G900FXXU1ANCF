.class public Lcom/samsung/contacts/group/SubGroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SubGroupDetailActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mFragment:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

.field private final mFragmentListener:Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mIntent:Landroid/content/Intent;

.field private mInteractionMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity$1;-><init>(Lcom/samsung/contacts/group/SubGroupDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mFragmentListener:Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mInteractionMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/SubGroupDetailActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "InteractionMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mInteractionMode:Z

    if-eqz p1, :cond_0

    const-string v1, "GroupInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    :goto_0
    const v1, 0x7f030124

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0802de

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    iput-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mFragmentListener:Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->setListener(Lcom/samsung/contacts/group/SubGroupBrowseListFragment$Listener;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/SubGroupBrowseListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/group/SubGroupBrowseListFragment;->setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->setupActionBar()V

    return-void

    :cond_0
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "GroupInfo"

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setupActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/SubGroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.nttdocomo"

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.kddi.ast.auoneid"

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/group/SubGroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e02a1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method
