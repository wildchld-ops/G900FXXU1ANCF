.class public Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentCount:I

.field private mDoneButtonClickable:Z

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyContactPositionInDialer:I

.field private mFromGroupDetail:Z

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

.field private mIsFromEmergencyMessage:Z

.field private mIsGroupConference:Z

.field private mIsRecreatedInstance:Z

.field private mIsSendingMSG:Z

.field private mIsTablet:Z

.field private mLimitedCount:I

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private actionbarTitle(I)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    const/16 v5, 0x122

    if-ne v4, v5, :cond_0

    const v4, 0x7f0e0027

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsTablet:Z

    if-eqz v4, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e027b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "PersonalGroup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/samsung/contacts/util/GroupUtils;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_2
    const-string v4, "ICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/samsung/contacts/util/GroupUtils;->shouldChangeEmergencyText()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0e028c

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0e0012

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v4, 0x7f0e028b

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_1

    :cond_6
    const-string v2, ""

    goto :goto_1
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    const-string v0, "fromGroupDetail"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mFromGroupDetail:Z

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getRecipientLimit()I

    move-result v8

    const-string v0, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SelectMode"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMode:I

    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    const-string v0, "actionCode"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mLimitedCount:I

    :goto_0
    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mCurrentCount:I

    const-string v0, "isGroupConference"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mLimitedCount:I

    goto :goto_0

    :cond_2
    const-string v0, "intent.action.INTERACTION_ICE"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMode:I

    const/16 v0, 0x122

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    new-instance v0, Lcom/samsung/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-wide/16 v4, 0x0

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    const-string v0, "isFromEmergencyMessage"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "emergency_contact_postion"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEmergencyContactPositionInDialer:I

    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mLimitedCount:I

    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mCurrentCount:I

    goto :goto_1
.end method

.method private handleHomeKeyForVideoCall(Z)V
    .locals 4

    const/4 v3, 0x3

    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->isVideoCallActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->requestSystemKeyEvent(IZ)Z

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->requestSystemKeyEvent(IZ)Z

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
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

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-eqz v0, :cond_1

    const-string v0, "content://com.android.contacts/emergency/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEmergencyContactPositionInDialer:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result_id"

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "content://com.android.contacts/emergency/personal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_contact_position_zero"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_contact_position_one"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_contact_position_two"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_contact_position_three"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isVideoCallActive()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
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

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_0

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, p1, v3, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFragment()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->configureListFragment()V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 5

    const/16 v4, 0x18

    const/4 v3, 0x4

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x122

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const v1, 0x7f0e0027

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public configureListFragment()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setMode(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setMMSinformation(III)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setSendingMSG(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setFromEmergencyMessage(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x122

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0
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

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setupActionListener()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x122

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsRecreatedInstance:Z

    if-eqz v4, :cond_7

    const-string v4, "actionCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    const-string v4, "doneButtonClickable"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    const-string v4, "mSelectedCount"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I

    const-string v4, "FromMMS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    :goto_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsTablet:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    new-instance v4, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    const v4, 0x7f030053

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03005f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f08016c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$2;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f08016b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->updateSelectionMenu()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "groupsPickerTag"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    if-nez v4, :cond_4

    new-instance v4, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-direct {v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;-><init>()V

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    const v4, 0x7f080036

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    const-string v6, "groupsPickerTag"

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_4
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->configureListFragment()V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$3;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE_CONTACTS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    return-void

    :cond_6
    move v4, v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "FromMMS"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f080171

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x122

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x101 -> :sswitch_0
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
        0x107 -> :sswitch_0
        0x108 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onPickerResult()V

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_0
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->handleHomeKeyForVideoCall(Z)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x122

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsFromEmergencyMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->handleHomeKeyForVideoCall(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->updateFragment()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "doneButtonClickable"

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mSelectedCount"

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "FromMMS"

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsSendingMSG:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "actionCode"

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "phone_data_id"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mFromGroupDetail:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 8
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

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x122

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v6

    aget-object v3, v0, v5

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->insertDefaultEmergencyContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionCode:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    const-string v0, "InteractionGroupSelectionActivity"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    if-ne v0, v5, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

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

    goto :goto_1

    :cond_2
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

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ClipData;

    const-string v3, "dummy"

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "text/x-vcard"

    aput-object v5, v4, v6

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

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, ";"

    invoke-direct {p0, v0, v3}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "datatype"

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public sendActionIntent(Ljava/util/HashMap;)V
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

    const/4 v2, 0x0

    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "sendActionIntent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v5, ";"

    invoke-direct {p0, v0, v5}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v0

    const/16 v4, 0x1e

    if-ne v0, v4, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    const-string v0, ""

    aput-object v0, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v0

    const/16 v4, 0x1f

    if-ne v0, v4, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "smsto"

    invoke-static {v4, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "sendto"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method protected setDoneButtonClickable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    instance-of v0, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setInteractionGroupMemberSelectionUpdateListener(Lcom/samsung/contacts/listener/InteractionCommonPickerListener;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
