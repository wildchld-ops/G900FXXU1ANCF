.class public Lcom/android/settings/motion2014/SMotionGuideHub2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;
    }
.end annotation


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field private mAdvancedSettingsIsTop:Z

.field private mAirBrowseDialog:Landroid/app/AlertDialog;

.field private mAirBrowsePreference:Landroid/preference/Preference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

.field private mEmailBody:Landroid/preference/CheckBoxPreference;

.field private mFlipCloseStatus:Z

.field private mFolderDialog:Landroid/app/AlertDialog;

.field private mFunctionTitleID1:I

.field private mFunctionTitleID2:I

.field private mFunctionTitleID3:I

.field private mFunctionTitleView1:Landroid/widget/TextView;

.field private mFunctionTitleView2:Landroid/widget/TextView;

.field private mFunctionTitleView3:Landroid/widget/TextView;

.field private mGuideAniResID1:I

.field private mGuideAniResID2:I

.field private mGuideAniResID3:I

.field private mGuideContent1:Ljava/lang/String;

.field private mGuideContent2:Ljava/lang/String;

.field private mGuideContent3:Ljava/lang/String;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHasAdvancedSettings:Z

.field private mHasListView:Z

.field private mHeadMessageID:I

.field private mHeadMessageView:Landroid/widget/TextView;

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView1:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mMessageView3:Landroid/widget/TextView;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mNumOfTutorial:I

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

.field private mSupportFolderType:Z

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;

.field private mTutorialTitleID1:I

.field private mTutorialTitleID2:I

.field private mTutorialTitleID3:I

.field private mTutorialTitleView1:Landroid/widget/TextView;

.field private mTutorialTitleView2:Landroid/widget/TextView;

.field private mTutorialTitleView3:Landroid/widget/TextView;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastAirBrowseAndScrollChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private isAllAirTurnAndScrollOptionDisabled()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_email_body"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_turn_internet_window"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_now_playing_on_music"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn_note_page_view"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    or-int/2addr v2, v3

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    or-int/2addr v2, v7

    or-int/2addr v2, v8

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :goto_0
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_pause"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    or-int v5, v2, v0

    or-int/2addr v5, v1

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x64

    const/4 v5, 0x2

    const v4, 0x7f091854

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "air_wake_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    const-string v0, "air_motion_wake_up"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f5d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_0
    const v0, 0x7f020021

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    :goto_0
    return-void

    :cond_1
    const-string v1, "air_turn_and_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    const-string v0, "air_motion_turn"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f090f60

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_2
    const v0, 0x7f020024

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    :cond_3
    const v1, 0x7f090f5f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "pick_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "motion_pick_up"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_2
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ef9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v1, "pick_up_to_call_out"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "motion_pick_up_to_call_out"

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_8
    const v0, 0x7f020385

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f10

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f0f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const-string v0, "merged_mute_or_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "motion_merged_mute_pause"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    const v0, 0x7f090f69

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :cond_c
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    const v0, 0x7f090f68

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ge v0, v2, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    :cond_d
    const v0, 0x7f0203b9

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    const v0, 0x7f090f67

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    :goto_4
    const v0, 0x7f020519

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    const v0, 0x7f090f6b

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ge v0, v2, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    goto :goto_4

    :cond_10
    iput v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_11
    const-string v0, "camera_quick_access"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "camera_quick_access"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    const v0, 0x7f020384

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_12
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    :goto_5
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    iput v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090f20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_5

    :cond_14
    const-string v0, "SMotionGuideHub"

    const-string v1, "Cannot get correct motion information"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showAirbrowseDialog()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04016a

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b03b8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090f70

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b03b9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e000a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x7f090f71

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SPR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VZW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "USC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CRI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VMU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "XAS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TFN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "XAR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CSP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const v1, 0x7f0e000b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x7f090f72

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b03ba

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090f73

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f020022

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090f74

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$11;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$11;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showFolderDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091855

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090800

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showTalkBackDisableDialog(Ljava/lang/String;)V
    .locals 7

    const v4, 0x7f090fc0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    move-object v1, p1

    const-string v3, "air_motion_turn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f090fbf

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    const-string v3, "motion_merged_mute_pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f091034

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f091196

    invoke-virtual {p0, v6}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f090fc1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f090fbf

    goto :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f07

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090800

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f09

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$6;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private startTryActually(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xa

    const-string v0, "air_wake_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "air_turn_and_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirScrollTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MotionTest"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "merged_mute_or_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-ne p2, v4, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    if-ne p2, v2, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_e

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showUseRingDialog()V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_HELP_VIDEO_SMART_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "file:///system/media/video/video_help.mp4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PalmMotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v3, "air_turn_and_scroll"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll_email_body"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_internet_window"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_now_playing_on_music"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_note_page_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_7
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6

    :cond_8
    const-string v3, "merged_mute_or_pause"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    :goto_a
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    move v3, v2

    goto :goto_8

    :cond_a
    move v3, v2

    goto :goto_9

    :cond_b
    move v1, v2

    goto :goto_a

    :cond_c
    const-string v3, "camera_quick_access"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "camera_quick_access_sound_feedback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    :goto_b
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_d
    move v1, v2

    goto :goto_b
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0401be

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b0483

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    const v3, 0x7f0b0484

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    const v3, 0x7f0b0488

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    const v3, 0x7f0b048c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    const v3, 0x7f0b0485

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    const v3, 0x7f0b0489

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    const v3, 0x7f0b048d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    const v3, 0x7f0b0486

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    const v3, 0x7f0b048a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    const v3, 0x7f0b048e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    const v3, 0x7f0b0487

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    const v3, 0x7f0b048b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    const v3, 0x7f0b048f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_a
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_b
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :goto_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_c

    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_d
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "default"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "air_motion_wake_up"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "air_motion_turn"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "air_motion_scroll"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    const-string v0, "motion_merged_mute_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "camera_quick_access"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v12, "type"

    const-string v13, "default"

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    const-string v12, "hasAdvancedSettings"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    const-string v12, "AdvancedSettingsIsTop"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v12, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->setArgument(Ljava/lang/String;)V

    const v12, 0x7f0700a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    new-instance v12, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    instance-of v12, v12, Landroid/preference/PreferenceActivity;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0045

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v7, v15}, Landroid/widget/Switch;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    const/16 v13, 0x10

    const/16 v14, 0x10

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v14, Landroid/app/ActionBar$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x15

    invoke-direct/range {v14 .. v17}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v12, "advanced_air_call_accept_auto_start_speaker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    const-string v12, "advanced_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const-string v12, "advanced_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    const-string v12, "learn_about_the_sensor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mOpenDetailMenu:Z

    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v12, "extra_parent_preference_key"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_14

    sget v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v11, 0x1

    :goto_4
    const-string v12, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "email_body"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_2
    :goto_5
    const/4 v12, -0x1

    sput v12, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    :cond_3
    :goto_6
    new-instance v12, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v12, "type"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "type"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    :cond_5
    const-string v12, "hasAdvancedSettings"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v12, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v13, 0x7f090fec

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const v12, 0x7f070013

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    const-string v12, "email_body"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    const-string v12, "single_photo_view"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    const-string v12, "internet_window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    const-string v12, "now_playing_on_music"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    const-string v12, "bgm_on_lock_screen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v12, "note_page_view"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_9

    const-string v9, "com.samsung.android.snote"

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v12, "SMotionGuideHub"

    const-string v13, "S note is Installed."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f090ffb

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.sec.android.app.sbrowser"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v13, 0x7f090feb

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_7

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f090ff9

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v12, "SMotionGuideHub"

    const-string v13, "S note is NOT Installed"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "air_motion_turn_note_page_view"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_c
    const-string v12, "merged_mute_or_pause"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v13, 0x7f090f66

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const v12, 0x7f070078

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    const-string v12, "palm_touch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    const-string v12, "turn_over"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    const-string v12, "smart_pause"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x64

    if-lt v12, v13, :cond_1

    const-string v12, "turn_over"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string v12, "camera_quick_access"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const v12, 0x7f070076

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    const-string v12, "camera_quick_access_sound_feedback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_f
    const-string v12, "single_photo_view"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_10
    const-string v12, "internet_window"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_11
    const-string v12, "now_playing_on_music"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_12
    const-string v12, "bgm_on_lock_screen"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_13
    const-string v12, "note_page_view"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_14
    const-string v12, "learn_about_the_sensor"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6
.end method

.method public onPause()V
    .locals 4

    const v3, 0x7f090ec4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_1
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    if-nez p2, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_scroll_email_body"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_3
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_single_photo_view"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_4
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_internet_window"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_5
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_scroll_web_page"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_6
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_a
    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v3

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_now_playing_on_music"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_7
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_d
    move v0, v3

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_8
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_f
    move v0, v3

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_motion_turn_note_page_view"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_9
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_11
    move v0, v3

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "surface_palm_touch"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    :goto_a
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_13
    move v0, v3

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "motion_overturn"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    :goto_c
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_b

    :cond_16
    move v0, v3

    goto :goto_c

    :cond_17
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "smart_pause"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_d
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.sec.SMART_PAUSE_CHANGED"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_smart_pause_noti"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showSmartPauseDialog()V

    goto/16 :goto_3

    :cond_18
    move v0, v3

    goto :goto_d

    :cond_19
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "camera_quick_access_sound_feedback"

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mCameraQuickAccessSoundFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    :goto_e
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1b
    move v0, v3

    goto :goto_e

    :cond_1c
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showAirbrowseDialog()V

    goto/16 :goto_3

    :cond_1d
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public showSmartPauseDialog()V
    .locals 11

    const/16 v3, 0x8

    const v10, 0x7f090f6b

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0401e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0b04e9

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b0175

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0b04ea

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b016d

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090f79

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$12;

    invoke-direct {v2, p0, v5, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$12;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v2, 0x7f090f75

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "%s"

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const v3, 0x7f090f78

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "%s"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "%s"

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n\n- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v8, 0x7f090f76

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v8, 0x7f090f77

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    const-string v3, "SMotionGuideHub"

    const-string v8, "1)There is no %s."

    invoke-static {v3, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v8, "SMotionGuideHub"

    const-string v9, "2)There is no %s."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
