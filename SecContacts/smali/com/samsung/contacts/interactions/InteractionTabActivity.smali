.class public Lcom/samsung/contacts/interactions/InteractionTabActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;,
        Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;,
        Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;
    }
.end annotation


# static fields
.field static mIsConfigChanged:Z

.field private static sendType:I


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field protected mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

.field protected mActionCode:I

.field private mActionbartitle:Ljava/lang/String;

.field protected mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

.field private mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

.field protected mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentCount:I

.field private mCurrentOrientationmode:I

.field protected mCustomSearchQueryString:Ljava/lang/String;

.field protected mDisplayTab:Z

.field private mDoneButtonClickable:Z

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field protected mExtraValue:I

.field private mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

.field protected mGroupSendType:I

.field protected mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsEasyMode:Z

.field private mIsGroupConference:Z

.field private mIsPhone:Z

.field private mIsRecreatedInstance:Z

.field private mIsRedirect:Z

.field private mIsSendingMSG:Z

.field private mIsStartMultiWindow:Z

.field private mIsTablet:Z

.field private mLimitedCount:I

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOnlineSearchMode:I

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mSpeedDial:Z

.field private mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

.field private mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

.field private final mTabPagerListener:Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;

.field public mTabState:I

.field private mTotalCount:I

.field private sVoiceCapable:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;Lcom/samsung/contacts/interactions/InteractionTabActivity$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPagerListener:Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;

    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCustomSearchQueryString:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsGroupConference:Z

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsSendingMSG:Z

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/interactions/InteractionTabActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/contacts/interactions/InteractionTabActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTotalCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/interactions/InteractionTabActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/interactions/InteractionTabActivity;)Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    return-object v0
.end method

.method private actionbarTitle(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e027b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "actionbar_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0e027d

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "Send email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "send_mail"

    goto :goto_0

    :cond_3
    const-string v1, "Speed dial setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "menu_speed_dial_setting"

    goto :goto_0

    :cond_4
    const-string v1, "Share namecard via"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkLimitedCount()V
    .locals 7

    const v6, 0xffff

    const/16 v5, 0x3e8

    const/4 v4, 0x1

    const/16 v3, 0xfa

    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v1

    sput v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getRecipientLimit()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0x96

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto :goto_0

    :cond_5
    sget v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_6

    sget v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto :goto_0

    :cond_7
    sget v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    if-nez v1, :cond_a

    const-string v1, "SPH-D710"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "aegis2vzw"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "SPH-D710BST"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "express2lteuc"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_0

    :cond_a
    sget v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendType:I

    if-ne v1, v4, :cond_b

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_0
.end method

.method private configureFavoritesFragments()V
    .locals 4

    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureFavoritesFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setMMSinformation(III)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    return-void
.end method

.method private configureFragments(I)V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureContactsFragments()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureFavoritesFragments()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureLogsFragments()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureGroupsFragments()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSendingMSG(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setCurrentTab(I)V

    return-void
.end method

.method private configureGroupsFragments()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->setMMSinformation(III)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    return-void
.end method

.method private configureLogsFragments()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setDirectSendIntentMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setMMSinformation(I)V

    return-void
.end method

.method private createViewsAndMultipleFragments(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f080036

    const v8, 0x7f08014b

    const-string v0, "InteractionTabActivity"

    const-string v1, "createViewsAndMultipleFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentOrientationmode:I

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    move-object v0, p0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->createInteractionActionBarAdapter(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->invalidateOptionsMenuIfNeeded()V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->scrollTab(Landroid/app/ActionBar;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->checkTalkBackEnable()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->initialize()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/common/list/ContactListFilterController;)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v8}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/widget/ContactsViewPager;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPagerListener:Lcom/samsung/contacts/interactions/InteractionTabActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setOffscreenPageLimit(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactsViewPager;->setScrollFragment(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string v0, "tab-contacts"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const-string v0, "tab-groups"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tab-logs"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tab-favorites"

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    :cond_4
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-nez v0, :cond_8

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-direct {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const-string v1, "tab-contacts"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    const-string v1, "tab-favorites"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    const-string v1, "tab-groups"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    const-string v1, "tab-logs"

    invoke-virtual {v7, v8, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_8
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_a
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureFragments(I)V

    return-void

    :cond_b
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const-string v1, "tab-contacts"

    invoke-virtual {v7, v9, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    const-string v1, "tab-favorites"

    invoke-virtual {v7, v9, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    const-string v1, "tab-groups"

    invoke-virtual {v7, v9, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_3
.end method

.method private createViewsAndSingleFragments()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-direct {v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const v2, 0x7f080036

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const-string v4, "tab-contacts"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureContactsFragments()V

    :cond_1
    return-void
.end method

.method private getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v9, 0x7f0e001e

    const/16 v8, 0xa0

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v7

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnContactIdPickerResult(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVCardName  = contactId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0, v9}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_2

    invoke-static {p0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p0, v9}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_0

    :cond_5
    move-object v0, v4

    goto :goto_0
.end method

.method private handleHomeKeyForVideoCall(Z)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isVideoCallActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->requestSystemKeyEvent(IZ)Z

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->requestSystemKeyEvent(IZ)Z

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private hasActiveVideoCall()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "P"

    const-string v1, ","

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone_data_id"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.android.contacts/emergency/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result_id"

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private isVideoCallActive()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->hasActiveVideoCall()Z

    move-result v0

    return v0
.end method

.method private redirectIfNeed()Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsConfigChanged:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getRequest(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v2, "request"

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private scrollTab(Landroid/app/ActionBar;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity$4;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;ILandroid/app/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateMultipleFragmentVisibility(Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080257

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v4}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v4, v4, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v4, v4, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-eqz v2, :cond_3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setupFragments(Landroid/app/FragmentTransaction;Z)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v2}, Lcom/samsung/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v4, 0x7f080140

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v1, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    if-eqz v3, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSingleFragmentVisibility()V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "InteractionTabActivity"

    const-string v1, "updateSingleFragmentVisibility"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v2, 0x7f080257

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v4}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v4, v4, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v4, v4, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v4, 0x7f080258

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v1, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_4
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 5

    const/16 v4, 0x18

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_3

    const-string v1, "InteractionTabActivity"

    const-string v2, "ACtionbar title"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACtionbar title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected configureContactsFragments()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureContactsFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setMultiSelectEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setQueryString(Ljava/lang/String;Z)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v1, -0x2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setLegacyCompatibilityMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setMMSinformation(III)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSpeedDial(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    if-nez v0, :cond_1

    iput v7, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mOnlineSearchMode:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDirectoryResultLimit(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v8}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIncludeProfile(Z)V

    :goto_2
    return-void

    :cond_1
    iput v8, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mOnlineSearchMode:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v7}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIncludeProfile(Z)V

    goto :goto_2
.end method

.method protected createInteractionActionBarAdapter(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentOrientationmode:I

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    return-void
.end method

.method protected createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;Landroid/app/Activity;)V

    return-object v0
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

.method protected doDoneAction()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_3

    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->sendNum()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->onPickerResult()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0
.end method

.method protected getRequest(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getResultString(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v0, :cond_2

    const-string v0, ";"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public hideSoftKeyboardInFragment(I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isBlockFavoritesTabMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockLogsTabMode()Z
    .locals 3

    const-string v0, "isLogsTabBlock"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "logblock"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vip-email"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "additional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pick-contact-from-tab"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "additional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "email-multi"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "additional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sVoiceCapable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiwindowMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsStartMultiWindow:Z

    return v0
.end method

.method protected makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v5, 0x118

    if-ne v4, v5, :cond_1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v5, 0xbe

    if-ne v4, v5, :cond_3

    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_0

    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "namecard_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsPhone:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsPhone:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sVoiceCapable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sVoiceCapable:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v0, :cond_3

    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    instance-of v0, p1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_5

    const-string v0, "InteractionTabActivity"

    const-string v1, "mGroupsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "InteractionTabActivity"

    const-string v1, "mCallLogFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setupActionListener()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "notifyContactListFilterChanged -> onContactListFilterChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "InteractionTabActivity"

    const-string v6, "onCreate"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsEasyMode:Z

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->redirectIfNeed()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TAG"

    const-string v5, "redirect to EasyInteractionTabActivity."

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRedirect:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v3, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    new-instance v3, Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-direct {v3}, Lcom/android/contacts/common/list/ContactListFilterController;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v3, p0}, Lcom/android/contacts/common/list/ContactListFilterController;->addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentOrientationmode:I

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsTablet:Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsPhone:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111003c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sVoiceCapable:Z

    iput-boolean v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsStartMultiWindow:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "isGroupConference"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsGroupConference:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getRequest(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz p1, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRecreatedInstance:Z

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-eqz v3, :cond_3

    const-string v3, "InteractionTabActivity"

    const-string v4, "mIsRecreatedInstance"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "actionCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const-string v3, "extraValue"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    const-string v3, "groupType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupSendType:I

    const-string v3, "maxRecipientCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    const-string v3, "existingRecipientCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentCount:I

    const-string v3, "from_speed_dial"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    const-string v3, "displayTab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    if-eqz v3, :cond_1

    const-string v3, "currentTab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const-string v3, "InteractionTabActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsRecreatedInstance-mTabState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "doneButtonClickable"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    const-string v3, "mSelectedCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    const-string v3, "mOnlineSearchMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mOnlineSearchMode:I

    const-string v3, "FromMMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsSendingMSG:Z

    :goto_2
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto/16 :goto_0

    :cond_2
    move v3, v5

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupSendType:I

    const-string v3, "InteractionTabActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mGroupSendType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupSendType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const-string v3, "InteractionTabActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mExtraValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->checkLimitedCount()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "existingRecipientCount"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "from_speed_dial"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    iput v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FromMMS"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsSendingMSG:Z

    goto/16 :goto_2

    :cond_5
    const v3, 0x7f030056

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v3, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->createViewsAndMultipleFragments(Landroid/os/Bundle;)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setCurrentFragmentActiveFlag()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setCurrentFragmentSoftInputMode()V

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f08016c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/contacts/interactions/InteractionTabActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$1;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f08016b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setVisibilitySelectionMenu()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateSelectionMenu()V

    :cond_6
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/samsung/contacts/interactions/InteractionTabActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$2;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.launcher.action.EASY_MODE_CHANGE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0a0032

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->createViewsAndSingleFragments()V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InteractionTabActivity"

    const-string v1, "onCreateOptionsMenu 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f080172

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f080171

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsEasyMode:Z

    instance-of v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isChangingConfigurations()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsConfigChanged:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->hideSoftKeyboard()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->doDoneAction()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_1
        0x7f080172 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRedirect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->handleHomeKeyForVideoCall(Z)V

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProviderStatusChange()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_1

    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderStatusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/TabPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateSingleFragmentVisibility = "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateSingleFragmentVisibility()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    const-string v0, "InteractionTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsRedirect:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->handleHomeKeyForVideoCall(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->checkTalkBackEnable()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setListener(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$Listener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setupBlockTabs()V

    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/TabPagerAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateSingleFragmentVisibility 1= "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateSingleFragmentVisibility()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extraValue"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "displayTab"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    if-eqz v0, :cond_0

    const-string v0, "currentTab"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "doneButtonClickable"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mSelectedCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mOnlineSearchMode"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "FromMMS"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedTabChanged(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearFocusAll()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget-object v0, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->clearFocusAll()V

    :cond_0
    const-string v0, "InteractionTabActivity"

    const-string v3, "onSelectedTabChanged"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->hideSoftKeyboard()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setCurrentFragmentActiveFlag()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setCurrentFragmentSoftInputMode()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v3, "InteractionTabActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDisplayTab = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onSetCurrentTab(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setVisibilitySelectionMenu()V

    return-void
.end method

.method public returnContactIdPickerResult(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-nez v1, :cond_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "raw_contact_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v10

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "index"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "phone_data_id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public returnPickSpeedDialResult(Landroid/net/Uri;J)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "datatype"

    const-string v2, "contact"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "index"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "phone_data_id"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public returnPickerResultHashMap(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x126

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v3

    aget-object v4, v0, v8

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-direct {p0, v0, v4, v2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResultString(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v2, ";"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0x96

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_7

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "sendto"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    :cond_6
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v2, v3

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    const-string v0, ""

    aput-object v0, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_9
    const-string v0, "result"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "datatype"

    const-string v1, "contact"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultIntent(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public returnPickerResultIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    return-void
.end method

.method public returnPickerResultUri(Landroid/net/Uri;)V
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendContactsIntent(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    return-void
.end method

.method public sendVcardByMultiUriIntent(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendVcardIntent(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ClipData;

    const-string v3, "dummy"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text/x-vcard"

    aput-object v6, v4, v5

    new-instance v5, Landroid/content/ClipData$Item;

    const-string v6, "dummy"

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setButtonClickable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected setCurrentFragmentActiveFlag()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-nez v0, :cond_2

    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected setCurrentFragmentSoftInputMode()V
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSoftInputMode()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSoftInputMode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->setSoftInputMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setVisibilitySelectionMenu()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V

    :cond_1
    return-void
.end method

.method protected setupBlockTabs()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockLogsTab(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockLogsTab(Z)V

    goto :goto_0
.end method

.method protected setupFragments(Landroid/app/FragmentTransaction;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateFragmentVisibility->GROUPS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearSelectedArray()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->clearSelectedArray()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateFragmentVisibility->CONTACTS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearSelectedArray()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->clearSelectedArray()V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_2
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateFragmentVisibility->FAVORITES"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearSelectedArray()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->clearSelectedArray()V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateFragmentVisibility->LOGS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearSelectedArray()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setCurrentCallLogInfo()V

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->clearSelectedArray()V

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSelectionMenu()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e027b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "InteractionTabActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "InteractionTabActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTotalCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTotalCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedTextView:Landroid/widget/TextView;

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "InteractionTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listview count - headerview count= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v4}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v5}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTotalCount:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mLimitedCount:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v4}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v5}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateSelectAllState(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
