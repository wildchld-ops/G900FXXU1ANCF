.class public Lcom/samsung/contacts/activities/GroupListActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;
    }
.end annotation


# instance fields
.field private mGroupFragment:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300b4

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/activities/GroupListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/GroupListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080210

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/samsung/contacts/activities/GroupListActivity;->mGroupFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v0, p0, Lcom/samsung/contacts/activities/GroupListActivity;->mGroupFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v1, Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;-><init>(Lcom/samsung/contacts/activities/GroupListActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/GroupListActivity;->setupActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/GroupListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/GroupListActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v1, "0022"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EditMode"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/activities/GroupListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    const-string v1, "0024"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.contacts.action.GROUP_SELECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "delete_icon_show"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/activities/GroupListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "0023"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/group/GroupChangeOrderActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/activities/GroupListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance v1, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;->execute()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080331 -> :sswitch_1
        0x7f080332 -> :sswitch_2
        0x7f080333 -> :sswitch_3
        0x7f080334 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080334

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setupActionBar()V
    .locals 3

    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/GroupListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0e006e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
