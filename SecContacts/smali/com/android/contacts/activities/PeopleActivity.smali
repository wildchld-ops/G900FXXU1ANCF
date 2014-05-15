.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactTabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field public static mChameleon:Lcom/samsung/dialer/impl/AbbreviatedDialingCodesManagerImpl;

.field private static mComponentEasyName:Ljava/lang/String;

.field public static mCustomerPreferenceImpl:Lcom/samsung/contacts/impl/CustomerPreferenceManagerImpl;

.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final ALL_TAG:Ljava/lang/String;

.field protected final CALLLOG_TAG:Ljava/lang/String;

.field protected final DIALPAD_TAG:Ljava/lang/String;

.field protected final FAVORITE_TAG:Ljava/lang/String;

.field protected final GROUPS_TAG:Ljava/lang/String;

.field private mAabStartImpl:Lcom/samsung/contacts/impl/AabStartImpl;

.field protected mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field protected mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

.field protected mBrowserView:Landroid/view/View;

.field protected mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentFilterIsValid:Z

.field private mCurrentFragmentInContactsTab:I

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field public mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field protected mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableDebugMenuOptions:Z

.field protected mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFavoritesView:Landroid/view/View;

.field mFragmentContextualActionbarListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

.field private mFragmentInitialized:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsAvailableShowKeypadMenu:Z

.field protected mIsEasyMode:Z

.field private mIsEmergencyMode:Z

.field private mIsRecreatedInstance:Z

.field private mOnlineSearchMode:I

.field protected mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

.field private mOptionsMenuContactsAvailable:Z

.field private mPeopleActivityView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSmartClipUtils:Lcom/samsung/contacts/util/SmartClipUtils;

.field private mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

.field protected mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

.field private mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

.field private misAssistantMenuVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentContextualActionbarListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/contacts/impl/AabStartImpl;

    invoke-direct {v0}, Lcom/samsung/contacts/impl/AabStartImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabStartImpl:Lcom/samsung/contacts/impl/AabStartImpl;

    const-string v0, "tab-pager-dialpad"

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->DIALPAD_TAG:Ljava/lang/String;

    const-string v0, "tab-pager-calllog"

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->CALLLOG_TAG:Ljava/lang/String;

    const-string v0, "tab-pager-favorite"

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->FAVORITE_TAG:Ljava/lang/String;

    const-string v0, "tab-pager-all"

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->ALL_TAG:Ljava/lang/String;

    const-string v0, "tab-pager-groups"

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->GROUPS_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableShowKeypadMenu:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    return-void
.end method

.method private OnlineSearchModeChanged()Z
    .locals 2

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->finishActionModeAllFragments()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PeopleActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/util/ImsLowSignalHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    return-object v0
.end method

.method private areContactWritableAccountsAvailable()Z
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areContactWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private configureCALLLOGFragment()V
    .locals 0

    return-void
.end method

.method private configureContactListFragment()V
    .locals 8

    const/4 v3, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v7}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    :goto_1
    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v3, v5

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private configureContactListFragmentForRequest()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-nez v1, :cond_2

    iput v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    :goto_1
    return-void

    :cond_2
    iput v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_1
.end method

.method private configureDialpadFragment()V
    .locals 0

    return-void
.end method

.method private configureFragments(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    sparse-switch v0, :sswitch_data_0

    const/4 v4, -0x1

    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v5, v2, v7}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    const/4 v3, 0x0

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureDialpadFragment()V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureCALLLOGFragment()V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v5

    sget v6, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v5}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void

    :sswitch_0
    const/4 v5, -0x2

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    goto :goto_0

    :sswitch_1
    const/4 v5, -0x5

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    goto :goto_0

    :sswitch_2
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v5, v8}, Lcom/android/contacts/widget/TransitionAnimationView;->setMaskVisibility(Z)V

    :cond_4
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    goto :goto_0

    :sswitch_4
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    goto :goto_0

    :sswitch_5
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    goto :goto_0

    :sswitch_6
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    goto :goto_0

    :sswitch_7
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    goto :goto_0

    :sswitch_8
    sget v4, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
        0x1f4 -> :sswitch_5
        0x258 -> :sswitch_6
        0x259 -> :sswitch_7
        0x2bc -> :sswitch_8
    .end sparse-switch
.end method

.method private deleteSelection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private finishActionModeAllFragments()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->finishActionMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->finishActionMode()V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->finishActionMode()V

    :cond_2
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private isSweepEnabledChanged()Z
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSweepActionEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isSweepEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processIntent(Z)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const-string v1, "PeopleActivity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " processIntent: forNewIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEmergencyMode:Z

    if-eqz v1, :cond_5

    instance-of v1, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "redirect_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/activities/PeopleActivity;->mComponentEasyName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect Extras to EmergencyPeopleActivity :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_6

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_9

    instance-of v1, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "redirect_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/activities/PeopleActivity;->mComponentEasyName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_7
    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect Extras to EasyPeopleActivity :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private setComponentNameToActionbarAdapter(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEmergencyMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    sget-object v1, Lcom/android/contacts/activities/PeopleActivity;->mComponentEasyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setComponentName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "PeopleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redirect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "redirect_from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PeopleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "component is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "redirect_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "redirect_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setComponentName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setComponentName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    return-void
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method private shouldIgnoreNewIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v2, "fromDetail"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    const-string v2, "com.android.dialer.DialtactsActivity"

    const-string v3, "redirect_from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private showEmptyStateForTab(I)V
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0e01b0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->GROUPS:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0e0062

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0063

    goto :goto_1

    :cond_4
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0e006c

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0
.end method

.method private updateDebugOptionsVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private updateViewConfiguration(Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setProviderStatus(I)V

    :cond_1
    const v0, 0x7f080257

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08025a

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v2, v6, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v2, v6, :cond_3

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "no_modify_accounts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactWritableAccountsAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/widget/ContactsViewPager;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setVisibility(I)V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    :cond_a
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v2, :cond_b

    new-instance v2, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f080258

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_b
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v7}, Lcom/samsung/contacts/widget/ContactsViewPager;->setVisibility(I)V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected addFragmentsToTransaction(Landroid/app/FragmentTransaction;)V
    .locals 3

    const v2, 0x7f08014b

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string v1, "tab-pager-dialpad"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    const-string v1, "tab-pager-calllog"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public areContactsAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanupDialpadSearchView()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->cleanupView()V

    :cond_0
    return-void
.end method

.method public clearFocusOnActionBarSearchView()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    return-void
.end method

.method public configureSweepAction(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isSweepEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setScrollFragment(Z)V

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4
.end method

.method protected createActionBarAdapter(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V
    .locals 2

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p4}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/TabPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected createDialpadFragment()V
    .locals 1

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-void
.end method

.method protected createFragmentsAttachedViewPager()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->createDialpadFragment()V

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContactBrowseListFragment()Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-void
.end method

.method protected createOptionMenuController()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    :cond_0
    return-void
.end method

.method protected createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;
    .locals 1

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactTabPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactTabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x1

    const v0, 0x7f0300e0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    const v0, 0x7f080262

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const v0, 0x7f08025c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentContextualActionbarListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContextualActionbarListener(Lcom/samsung/contacts/listener/ContextualActionbarListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentContextualActionbarListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setContextualActionbarListener(Lcom/samsung/contacts/listener/ContextualActionbarListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentContextualActionbarListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setContextualActionbarListener(Lcom/samsung/contacts/listener/ContextualActionbarListener;)V

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->setTransactionHide(Landroid/app/FragmentTransaction;)V

    if-eqz v10, :cond_2

    const v0, 0x7f080259

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPeopleActivityView:Lcom/android/contacts/widget/TransitionAnimationView;

    const v0, 0x7f080261

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    :cond_2
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v8}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, p0, p0, v0, v10}, Lcom/android/contacts/activities/PeopleActivity;->createActionBarAdapter(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setComponentNameToActionbarAdapter(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->getDialpadSearchView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBarForDialpad(Landroid/view/View;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEmergencyMode:Z

    if-eqz v0, :cond_a

    :cond_4
    move v0, v7

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEasyMode(Z)V

    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/util/SmartClipUtils;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/util/SmartClipUtils;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSmartClipUtils:Lcom/samsung/contacts/util/SmartClipUtils;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mSmartClipUtils:Lcom/samsung/contacts/util/SmartClipUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/samsung/contacts/util/SmartClipUtils;->updateMetaTag(ILandroid/net/Uri;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void

    :cond_6
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/widget/ContactsViewPager;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v7}, Lcom/samsung/contacts/widget/ContactsViewPager;->disableBounceBack(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string v0, "tab-pager-dialpad"

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string v0, "tab-pager-calllog"

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    const-string v0, "tab-pager-favorite"

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v0, "tab-pager-all"

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->createFragmentsAttachedViewPager()V

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/PeopleActivity;->addFragmentsToTransaction(Landroid/app/FragmentTransaction;)V

    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1002

    :goto_3
    new-instance v1, Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-direct {v1, p0, v0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x1001

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBar()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    mul-long v6, v0, v2

    return-wide v6
.end method

.method protected getContactBrowseListFragment()Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public getDialpadSearchImpl()Lcom/samsung/dialer/impl/DialpadSearchImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    return-object v0
.end method

.method public hideActionbar()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->hideActionbar()V

    :cond_0
    return-void
.end method

.method public hideDialpadFragment(ZZ)V
    .locals 0

    return-void
.end method

.method public isAddFavoriteListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isContactListEmpty()Z

    move-result v0

    return v0
.end method

.method public isCallLogListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavoriteListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSweepEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSweepAction()Z

    move-result v0

    return v0
.end method

.method public onAction(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :pswitch_1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    const-string v1, "debug debug!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateDebugOptionsVisibility(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_0

    :sswitch_2
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :sswitch_3
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    if-ne p2, v0, :cond_0

    const-string v0, "onlyContactWithPhonesChanged"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    goto :goto_0

    :sswitch_5
    if-ne p2, v0, :cond_0

    const-string v0, "joinFail"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/detail/LinkedContactDialogFragment;->show(Landroid/app/FragmentManager;)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    if-ne p2, v0, :cond_0

    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MergeWithSamsungDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "PeopleActivity"

    const-string v1, "get ng"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PeopleActivity"

    const-string v2, "Error occured : "

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_6
        0xb -> :sswitch_7
        0x28 -> :sswitch_5
        0x63 -> :sswitch_4
    .end sparse-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabStartImpl:Lcom/samsung/contacts/impl/AabStartImpl;

    invoke-static {p0}, Lcom/samsung/contacts/impl/AabStartImpl;->shouldShowPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabStartImpl:Lcom/samsung/contacts/impl/AabStartImpl;

    invoke-static {p0}, Lcom/samsung/contacts/impl/AabStartImpl;->showPopupAgain(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PeopleActivity"

    const-string v1, "onBackPressed showContactTipsAgain"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->showContactTipsAgain(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isTwLauncherAlive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableNonVolatileViewBySetting()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableViewByDefaultAllCalls()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/dialer/impl/ViewByImpl;->setWhichButton(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    iput-boolean v3, v0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusAndTextOnSearchView()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/dialer/impl/ViewByImpl;->setWhichButton(I)V

    goto :goto_2
.end method

.method public onContactListFilterChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ContactsPerf"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactsPerf"

    const-string v3, "PeopleActivity.onCreate start"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "PeopleActivity"

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateStart(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PeopleActivity"

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContactsPerformance"

    const-string v3, "PeopleActivity.onCreate start"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VerificationLog"

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    invoke-static {p0}, Lcom/samsung/contacts/model/rcs/RcsUtils;->refreshRCSeSettingValue(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEmergencyMode:Z

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEmergencyMode:Z

    if-eqz v0, :cond_a

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {v3, v0}, Lcom/samsung/contacts/activities/ContactsTab;->setupContactsTab(ZZ)V

    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ContactListFilterController;->addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    if-eqz p1, :cond_b

    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    :goto_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.launcher.action.EASY_MODE_CHANGE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEmergencyModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$2;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "PAP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "VID"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "XEU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "need_import_demo_vcf"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "ContactsApplication"

    const-string v3, "Need Import..."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "need_import_demo_vcf"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_demo_contact"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "file:///storage/sdcard0/LiveDemo/Contacts_livedemo.vcf"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "account_name"

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "account_type"

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "AUTO_LOADING_FOR_PAP"

    const-string v2, "PAP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/dialer/impl/AbbreviatedDialingCodesManagerImpl;

    invoke-direct {v0}, Lcom/samsung/dialer/impl/AbbreviatedDialingCodesManagerImpl;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->mChameleon:Lcom/samsung/dialer/impl/AbbreviatedDialingCodesManagerImpl;

    new-instance v0, Lcom/samsung/contacts/impl/CustomerPreferenceManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/CustomerPreferenceManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->mCustomerPreferenceImpl:Lcom/samsung/contacts/impl/CustomerPreferenceManagerImpl;

    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->mCustomerPreferenceImpl:Lcom/samsung/contacts/impl/CustomerPreferenceManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/CustomerPreferenceManagerImpl;->update()V

    new-instance v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const-string v0, "ContactsPerf"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ContactsPerf"

    const-string v1, "PeopleActivity.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "PeopleActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateEnd(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_9
    new-instance v0, Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/util/ImsLowSignalHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_1

    :cond_b
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    goto/16 :goto_2

    :cond_c
    const-string v0, "ContactsApplication"

    const-string v1, "Need Not Import..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ContactListFilterController;->removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableYellowPage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/dialer/calllog/YellowPageCallerid;->unInitialize_3rdlib()V

    :cond_4
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v2, -0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    new-array v3, v0, [I

    aput v1, v3, v4

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([III)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->deleteSelection()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->shouldIgnoreNewIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setComponentNameToActionbarAdapter(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    const-string v0, "PeopleActivity"

    const-string v1, "onNewIntent configureScreenFromIntent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iput-boolean v3, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mIsNeedConfigureScreen:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v4

    iget v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFragmentInContactsTab:I

    invoke-static {p0, v2, v3, v4, v5}, Lcom/samsung/contacts/menu/factory/PeopleOptionMenuFactory;->createContactsMenu(Landroid/content/Context;ILcom/android/contacts/common/list/ContactListFilter;II)Lcom/samsung/contacts/menu/OptionMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/contacts/menu/OptionMenu;->execute()Z

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEditEnter:Lcom/samsung/contacts/ContactsPerformance;

    invoke-virtual {v0}, Lcom/samsung/contacts/ContactsPerformance;->clear()V

    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->stopTracking()V

    invoke-static {}, Lcom/samsung/dialer/impl/CallMessageImpl;->dismissHelpDialog()V

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->removeAssistantMenuIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->unregisterAssistantReceiver()V

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_2
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->createOptionMenuController()V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFragmentInContactsTab:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;->configureVisibility(Landroid/view/Menu;II)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onProviderStatusChange()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateContactTabUnavailableView()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    :cond_0
    const-string v0, "currentFragmentInContactsTab"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFragmentInContactsTab:I

    const-string v0, "mOnlineSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    return-void
.end method

.method protected onResume()V
    .locals 6

    const v4, 0x7f0e001e

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "PeopleActivity"

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeStart(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    const-string v2, "VerificationLog"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v2, v3, :cond_8

    const v2, 0x7f0e0273

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(I)V

    :goto_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseEccDialerInCaseOfNoInternalMemory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getAvailableInternalMemorySize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1080

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v2}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableToastForStopDeleting()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStoppedDeleting(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0e0475

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-static {v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStoppedDeleting(Z)Z

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->checkTalkBackEnable()V

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->startTracking()V

    invoke-static {p0}, Lcom/samsung/dialer/impl/CallMessageImpl;->showHelpDialog(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon_ContactMain(ILcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->registerAssistantReceiver()V

    :cond_5
    const-string v0, "ContactsPerformance"

    const-string v2, "PeopleActivity.onResume end"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v2, "PeopleActivity"

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeEnd(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v2, v3, :cond_9

    const v2, 0x7f0e027a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    if-ne v2, v3, :cond_c

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEmergencyMode:Z

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(I)V

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f0e01ab

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(I)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    const-string v0, "currentFragmentInContactsTab"

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFragmentInContactsTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mOnlineSearchMode"

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    return v1
.end method

.method public onSelectedTabChanged()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->removeAssistantMenuIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon_ContactMain(ILcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "PeopleActivity"

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/ContactsPerformance;->getOnStartStart(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    :cond_0
    :goto_1
    const-string v0, "com.android.contacts.activities.PeopleActivity"

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabStartImpl:Lcom/samsung/contacts/impl/AabStartImpl;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/impl/AabStartImpl;->startAabService(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isSweepEnabledChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isSweepEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBackupAssistance()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->checkShowContactTipsAgain(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->doNotShowContactTipsAgain(Landroid/content/Context;)V

    :cond_3
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "PeopleActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnStartEnd(Ljava/lang/String;)V

    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    return-void
.end method

.method public requestSmartDialSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->onKeywordChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestSmartDialSearch(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->onKeywordChanged(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public requestSmartDialSearch(Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->onKeywordChanged(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method protected setTransactionHide(Landroid/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public setVisibilityDialpadSearchView(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getDialpadSearchView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode()V

    return-void
.end method

.method public startActionMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->setDeleteOnlyMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->startActionMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteOnlyMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode()V

    goto :goto_0
.end method

.method public startActionModeKnox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMovetoKnoxMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActionMode()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateActionBarCustomView(I)V
    .locals 2

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->getDialpadSearchView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBarForDialpad(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchView(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBarForViewBy(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBar()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchView(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBar()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchView(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0
.end method

.method protected updateContactTabUnavailableView()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider status is changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateUnavailableView(I)V

    return-void
.end method

.method protected updateFragmentsVisibility()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-nez v0, :cond_1

    const-string v0, "PeopleActivity"

    const-string v1, "updateFragmentsVisibility : mActionBarAdapter is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->OnlineSearchModeChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusAndTextOnSearchView()V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/widget/ContactsViewPager;->setTabStatus(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->inflateDialpad()Z

    :cond_3
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v1, v4}, Lcom/samsung/contacts/activities/TabPagerAdapter;->setSearchMode(Z)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DEFAULT:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->setNeedRCSQuery(Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/contacts/activities/TabPagerAdapter;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->setNeedRCSQuery(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    :cond_8
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v0, v1, :cond_c

    sget-object v1, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v2, "dialerEnter"

    invoke-virtual {v1, p0, v4, v2}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPeopleActivityView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/widget/TransitionAnimationView;->startMaskTransition(ZI)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v0, v3, :cond_f

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    :cond_a
    :goto_3
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_b
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto/16 :goto_0

    :cond_c
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v1, :cond_d

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->updateCoverNotification()V

    goto :goto_2

    :cond_d
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v1, v5}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    goto :goto_2

    :cond_e
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v1, v3}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    goto :goto_2

    :cond_f
    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v3, :cond_10

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_3

    :cond_10
    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    if-ne v0, v3, :cond_11

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_3

    :cond_11
    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_3
.end method
