.class public Lcom/samsung/contacts/impl/HelpContactSelectionActivity;
.super Lcom/android/contacts/activities/ContactSelectionActivity;
.source "HelpContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/impl/HelpContactSelectionActivity$1;,
        Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    const/16 v1, 0x50

    iget v2, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mActionCode:I

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->setEditMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->setDirectorySearchMode(I)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080036

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    const/16 v1, 0x3c

    iget v2, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mActionCode:I

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->setIncludeProfile(Z)V

    const v1, 0x7f0e04bb

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->setGuideTextId(I)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.intent.action.INSERT_OR_EDIT_FOR_HELP"

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "android.intent.action.PICK_FOR_HELP"

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;-><init>(Lcom/samsung/contacts/impl/HelpContactSelectionActivity;Lcom/samsung/contacts/impl/HelpContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    return-void
.end method
