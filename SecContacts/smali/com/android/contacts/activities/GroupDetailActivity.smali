.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomActionBarView:Landroid/view/View;

.field private mDefaultIceCount:I

.field private mDeletedMemberCount:I

.field private mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

.field private final mFragmentListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mFromEmergencyDialer:Z

.field private mFromManageEmergencyContact:Z

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsDefaultIceIncluded:Z

.field private mIsOptionsMenuOpen:Z

.field private mShowSelectMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/GroupDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->addMemberToGroup()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/GroupDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDeletedMemberCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/contacts/activities/GroupDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsDefaultIceIncluded:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/contacts/activities/GroupDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDefaultIceCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/GroupDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    return v0
.end method

.method static synthetic access$600(Ljava/util/List;)[J
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/samsung/contacts/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/GroupDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowSelectMenu:Z

    return p1
.end method

.method private addMemberToGroup()V
    .locals 4

    const/4 v3, 0x3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GroupInfo"

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v1, v3, :cond_0

    const-string v1, "EditMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v1, "GroupDetailActivity"

    const-string v2, "AddMember : MODE_GROUP_MEMBER_ICE_ADD"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EditMode"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "EditMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private adjustActionBar(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 9

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0300ac

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDialer:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/16 v8, 0x15

    invoke-direct {v5, v6, v7, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private registerScreenOffReceiver()V
    .locals 2

    new-instance v1, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterScreenOffReceiver()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDialer:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
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

.method private updateTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    invoke-static {p0}, Lcom/samsung/contacts/util/GroupUtils;->getMonthNameFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/samsung/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v6}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v7}, Lcom/samsung/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v6}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p2}, Lcom/samsung/contacts/util/GroupUtils;->isKnoxReadOnlyGroup(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-static {p2}, Lcom/samsung/contacts/util/GroupUtils;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromManageEmergencyContact:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f0e039e

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f0e0012

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f0e028b

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15

    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v6, -0x1

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v6, 0x3

    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    const-string v1, "ModifiedIds"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/android/contacts/activities/GroupDetailActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v3

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "editMemberCompleted"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/samsung/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    const v2, 0x7f0e02a0

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    invoke-virtual {p0, v14}, Lcom/android/contacts/activities/GroupDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v6, 0x5

    goto :goto_1

    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    :try_start_0
    const-string v1, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    const-string v1, ""

    aput-object v1, v11, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v11, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const v1, 0x7f0e0077

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_2
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    const-string v1, "smsto"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "sendto"

    invoke-virtual {v9, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    const-string v1, "GroupInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->loadGroupWithReload(Lcom/samsung/contacts/group/GroupInfo;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    const-string v0, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "from_safety_setting"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v11, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromManageEmergencyContact:Z

    :goto_0
    new-instance v0, Lcom/samsung/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-static {v0, p0}, Lcom/samsung/contacts/util/GroupUtils;->parseGroupType(Lcom/samsung/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/samsung/contacts/group/GroupInfo;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enable_sweep_actions"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0, v10}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDialer:Z

    invoke-virtual {v0, v1, v9}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setEmergencyContactsInfo(ZZ)V

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->adjustActionBar(Lcom/samsung/contacts/group/GroupInfo;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->registerScreenOffReceiver()V

    iput-boolean v11, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDialer:Z

    const-string v0, "default_only"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    goto :goto_0

    :cond_3
    const-string v0, "com.sec.android.app.contacts.action.INTERACTION_EMERGENCY_MESSAGE"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v11, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromManageEmergencyContact:Z

    new-instance v0, Lcom/samsung/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    goto/16 :goto_1

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    goto/16 :goto_1

    :cond_5
    const-string v0, "GroupInfo"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->unregisterScreenOffReceiver()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->clearFocusSearchView()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "editMemberCompleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->dismissProgress()V

    iget-boolean v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsDefaultIceIncluded:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e046f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDeletedMemberCount:I

    iget v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDefaultIceCount:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsDefaultIceIncluded:Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showActionAsText(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->startActionMode()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "EditMode"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string v2, "EditMode"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "email-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "directSendIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "groupSend"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "actionbar_title"

    const-string v3, "Send email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isSendEmailActionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getSelectedGroupInfo()Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/contacts/interactions/SendGroupDialogFragment;->show(Landroid/app/FragmentManager;Lcom/samsung/contacts/group/GroupInfo;)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getSelectedGroupInfo()Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "actionCode"

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "additional"

    const-string v3, "email-phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SelectMode"

    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "directSendIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "groupSend"

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromGroupDetail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08036e -> :sswitch_1
        0x7f08036f -> :sswitch_2
        0x7f080370 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const v4, 0x7f080370

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowSelectMenu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-eq v0, v5, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDialer:Z

    if-eqz v0, :cond_5

    :cond_0
    const v0, 0x7f08036e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v0, v5, :cond_3

    :cond_2
    const v0, 0x7f08036f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-eq v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowSelectMenu:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v3

    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromManageEmergencyContact:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08036e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isSendEmailActionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e025c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e0308

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "GroupInfo"

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
