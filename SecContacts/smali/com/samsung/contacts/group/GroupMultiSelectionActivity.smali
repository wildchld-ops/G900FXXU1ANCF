.class public Lcom/samsung/contacts/group/GroupMultiSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;,
        Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupAccountSelectionUpdateListener;,
        Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;
    }
.end annotation


# static fields
.field private static sIsTwoPaneMode:Z


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mDoneButtonClickable:Z

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAutoAdd:Z

.field private mIsSearchMode:Z

.field protected mListFragment:Landroid/app/Fragment;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mQueryString:Ljava/lang/String;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mTotalCount:I

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)Lcom/samsung/contacts/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mTotalCount:I

    return p1
.end method

.method private adjustActionBar()V
    .locals 4

    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    sget-boolean v0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->sIsTwoPaneMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;-><init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->updateSelectionMenu()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getActivityTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private finishWithHidingIME()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->finish()V

    return-void
.end method

.method private getActivityTitleRes()I
    .locals 3

    const/4 v0, -0x1

    const-string v1, "com.samsung.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMode:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v0, 0x7f0e02a0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMode:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const v0, 0x7f0e036c

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.contacts.action.GROUP_SELECT"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0e030c

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0e0298

    goto :goto_0

    :cond_4
    const v0, 0x7f0e0220

    goto :goto_0
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    const-string v0, "com.samsung.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EditMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMode:I

    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    const-string v0, "AutoAdd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mIsAutoAdd:Z

    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SelectedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.contacts.action.GROUP_SELECT"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    :cond_3
    const-string v0, "extraSelctedItem"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    const-string v1, "extraSelctedItem"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "com.samsung.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;-><init>()V

    iget v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setMode(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setAutoAdd(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setModifiedMemberIds(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setExceptedAccounts(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setDirectorySearchMode(I)V

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setQueryString(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setMultiSelectEnabled(Z)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080036

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_2
    const-string v1, "com.samsung.contacts.action.GROUP_SELECT"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->setGroupsToDelete(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    :cond_4
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;-><init>()V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->setSelectedAccounts(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->setupActionListener()V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionCode:I

    const-string v1, "selectedCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedCount:I

    const-string v1, "extraSelctedItem"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    const-string v1, "isSearchMode"

    iget-boolean v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mIsSearchMode:Z

    const-string v1, "queryString"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    :cond_0
    const-string v1, "KEY_MODIFIED_IDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->sIsTwoPaneMode:Z

    const v1, 0x7f0300bb

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->adjustActionBar()V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->configureListFragment()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const-string v1, "com.samsung.contacts.action.GROUP_SELECT"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "delete_icon_show"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f020227

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e0254

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    const v1, 0x7f080171

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onDeleteCompleted()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->finishWithHidingIME()V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onDoneClicked()V

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onDoneClicked()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->onDoneClicked()V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->finishWithHidingIME()V

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_2
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selectedCount"

    iget v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extraSelctedItem"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "isSearchMode"

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "queryString"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_MODIFIED_IDS"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mDoneButtonClickable:Z

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    new-instance v1, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMemberSelectionUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setGroupMemberSelectionUpdateListener(Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    new-instance v1, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->setMultipleDeletionUpdateListener(Lcom/samsung/contacts/listener/ButtonUpdateListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    new-instance v1, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupAccountSelectionUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupAccountSelectionUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->setGroupAccountSelectionUpdateListener(Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;)V

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
