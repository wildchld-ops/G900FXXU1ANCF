.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mHasPhoneNumber:Z

.field private mIsKNOXMode:Z

.field private mIsMoveToKNOXEnabled:Z

.field private mIsUserProfile:Z

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mRestoreDirectorySearchMode:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mRestoreDirectorySearchMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    return-void
.end method

.method private changeDeleteMenuVisiblity(IZLjava/lang/Long;)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isDeletableContact(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideDeleteMenu()Z

    move-result v1

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0
.end method

.method private changeShareViaMenuVisibility(IZLjava/lang/Long;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideShareViaMenu()Z

    move-result v2

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact(Landroid/net/Uri;)V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    return-void
.end method

.method private isMoveToKNOXEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "isSupportMoveTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsKNOXMode:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldHideDeleteMenu()Z
    .locals 9

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getBlockFormatMyProfile()Z

    move-result v5

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_4

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_6
    add-int v5, v4, v3

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_7

    move v5, v6

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getBlockFormatMyProfile()Z

    move-result v5

    if-ne v5, v6, :cond_9

    add-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto/16 :goto_0
.end method

.method private updateSelectedContactInfo()V
    .locals 9

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsUserProfile:Z

    iput-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mHasPhoneNumber:Z

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v7, v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v7, v4, v0

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v7, v6}, Lcom/android/contacts/common/list/ContactListAdapter;->hasPhoneNumber(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mHasPhoneNumber:Z

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v7, v6}, Lcom/android/contacts/common/list/ContactListAdapter;->isUserProfile(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsUserProfile:Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSelectionMenu()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e027b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isMultiSelectModeSearchInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->refreshSelectAllState()V
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    if-lt v3, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->refreshSelectAllState()V
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateSelectAllState(Z)V
    invoke-static {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)V

    goto :goto_0
.end method


# virtual methods
.method public deselectAll(ZZ)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isMultiSelectModeSearchInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideShareViaMenu()Z

    move-result v6

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :goto_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideDeleteMenu()Z

    move-result v6

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_2
.end method

.method public findAndSelectPosition(J)V
    .locals 8

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v1

    cmp-long v5, v1, p1

    if-nez v5, :cond_1

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/contacts/common/list/AutoScrollListView;->requestPositionToScreen(IZ)V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchModeActionModeSelectedContactId:J

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12

    const-wide/16 v0, -0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0390

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const v3, 0x7f0e0391

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v6, v1

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v7, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x1

    move v0, v1

    move v1, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v1, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x1

    move v0, v1

    move v1, v6

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    move v1, v6

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static/range {v0 .. v5}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v5

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v5, :cond_6

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/android/contacts/ContactsUtils;->getSharableOnly(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    :cond_6
    const/4 v1, 0x1

    if-ne v6, v1, :cond_8

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "profile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_8
    if-eqz v0, :cond_d

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    if-ne v6, v0, :cond_c

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0428

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xfa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xfa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/content/Intent;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_7
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    move v4, v2

    move v2, v1

    move-object v1, v0

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v10, "profile"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_b
    add-int/lit8 v2, v4, 0x1

    const/16 v4, 0xbb8

    if-le v2, v4, :cond_18

    const/4 v3, 0x1

    move v4, v1

    move-object v11, v0

    move v0, v3

    move-object v3, v11

    :goto_c
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_16

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, v1

    :goto_d
    if-eqz v4, :cond_a

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, v1

    move v1, v2

    goto :goto_b

    :cond_a
    if-eqz v4, :cond_b

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ClipData;

    const-string v4, "dummy"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "text/x-vcard"

    aput-object v8, v5, v7

    new-instance v7, Landroid/content/ClipData$Item;

    const-string v8, "dummy"

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v4, v5, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v2, "vcard"

    const-string v4, "vcard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/x-vcard"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ClipData;

    const-string v4, "dummy"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "text/x-vcard"

    aput-object v8, v5, v7

    new-instance v7, Landroid/content/ClipData$Item;

    const-string v8, "dummy"

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v3, v4, v5, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v3, "vcard"

    const-string v4, "vcard"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_c
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0428

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_d
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0e033c

    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/util/ChooserUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->copyToDialingScreen(J)V
    invoke-static {v2, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;J)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    :cond_10
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "personaIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_11

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "MoveTo"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "target"

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "contact_ids"

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_11
    :goto_e
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_12
    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "contact_ids"

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_e

    :sswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "MoveTo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "target"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "contact_ids"

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "contactUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_13
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v3, 0x1

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(JZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;JZ)V

    :cond_14
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v3, 0x0

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(JZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;JZ)V

    :cond_15
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_16
    move-object v2, v5

    goto/16 :goto_d

    :cond_17
    move v4, v2

    move v0, v3

    move-object v3, v1

    goto/16 :goto_c

    :cond_18
    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_a

    :cond_19
    move v0, v3

    goto/16 :goto_7

    :cond_1a
    move v1, v0

    goto/16 :goto_5

    :cond_1b
    move v0, v1

    move v1, v6

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x7f080304 -> :sswitch_0
        0x7f080309 -> :sswitch_3
        0x7f08032e -> :sswitch_1
        0x7f08032f -> :sswitch_4
        0x7f080337 -> :sswitch_5
        0x7f080338 -> :sswitch_6
        0x7f080339 -> :sswitch_7
        0x7f08033a -> :sswitch_8
        0x7f08033b -> :sswitch_9
        0x7f080368 -> :sswitch_2
    .end sparse-switch
.end method

.method public onContactSelected(IJ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->changeShareViaMenuVisibility(IZLjava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->changeDeleteMenuVisiblity(IZLjava/lang/Long;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_6
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v4, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->changeShareViaMenuVisibility(IZLjava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v4, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->changeDeleteMenuVisiblity(IZLjava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerBezelListener()V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V
    invoke-static {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110015

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addSelectAllHeader()V
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showMultiSelectModeSearchView(ZZ)V
    invoke-static {v2, v6, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;ZZ)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mRestoreDirectorySearchMode:I

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/16 v3, -0xd

    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setMultiSelectionMode(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSelectedLookupKeys(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onCreateActionMode()V

    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->isMoveToKNOXEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsMoveToKNOXEnabled:Z

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRecreatedInstance:Z
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideShareViaMenu()Z

    move-result v3

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideDeleteMenu()Z

    move-result v3

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v3, ""

    invoke-virtual {v2, v3, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    :cond_6
    return v6

    :cond_7
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v2, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->unRegisterBezelListener()V

    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deselectAll(ZZ)V

    invoke-virtual {p0, v3, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onDestroyActionMode()V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->removeSelectAllHeader()V
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #calls: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showMultiSelectModeSearchView(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;ZZ)V

    iget v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mRestoreDirectorySearchMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mRestoreDirectorySearchMode:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setMultiSelectionMode(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setProfileHeader()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3402(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;
    invoke-static {v1, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3502(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2602(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2302(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12

    const v11, 0x7f0e0163

    const/4 v10, 0x6

    const v9, 0x7f080304

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    :goto_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableCopyToDialer()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectedContactInfo()V

    :cond_1
    const v5, 0x7f08032f

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    :goto_1
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080309

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableCopyToDialer()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mHasPhoneNumber:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsUserProfile:Z

    if-nez v5, :cond_5

    move v5, v3

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08032e

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v3

    :goto_4
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080337

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080337

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_8

    move v5, v3

    :goto_5
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_6
    const v5, 0x7f080339

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_e

    if-eqz v2, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_e

    move v5, v3

    :goto_7
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08033a

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_f

    if-eqz v2, :cond_f

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mHasPhoneNumber:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsUserProfile:Z

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_f

    move v5, v3

    :goto_8
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08033b

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mHasPhoneNumber:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mIsUserProfile:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v3

    :cond_2
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v3

    :cond_3
    move v2, v4

    goto/16 :goto_0

    :cond_4
    move v5, v4

    goto/16 :goto_1

    :cond_5
    move v5, v4

    goto/16 :goto_2

    :cond_6
    move v5, v4

    goto/16 :goto_3

    :cond_7
    move v5, v4

    goto/16 :goto_4

    :cond_8
    move v5, v4

    goto/16 :goto_5

    :cond_9
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080338

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080338

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_a

    move v5, v3

    :goto_9
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_6

    :cond_a
    move v5, v4

    goto :goto_9

    :cond_b
    const v5, 0x7f080337

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080338

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_c
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_6

    :cond_d
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_6

    :cond_e
    move v5, v4

    goto/16 :goto_7

    :cond_f
    move v5, v4

    goto/16 :goto_8
.end method

.method public selectAll()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isMultiSelectModeSearchInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deselectAll(ZZ)V

    :goto_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideShareViaMenu()Z

    move-result v6

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :goto_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->shouldHideDeleteMenu()Z

    move-result v6

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_2
.end method

.method public setActionContextBarVisibility(ZLandroid/view/ActionMode;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10203b8

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    const v1, 0x7f020271

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    :cond_4
    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public shouldHideShareViaMenu()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return v8

    :cond_1
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/contacts/ContactsUtils;->hasSharableContact(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getBlockFormatMyProfile()Z

    move-result v6

    if-ne v6, v7, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    move v6, v7

    :goto_3
    move v8, v6

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    :cond_6
    move v8, v7

    goto :goto_1
.end method

.method public toPrimitives(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
