.class public Lcom/android/dialer/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;
.implements Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final buildcarrier:Ljava/lang/String;

.field private static mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;


# instance fields
.field public final FHD_WIDTH:D

.field private final SEP_INT:I

.field public final WQHD_WIDTH:D

.field private disableCallButton:Z

.field private doNotGroup:Z

.field public fragment_state:Z

.field private mActivity:Landroid/app/Activity;

.field public final mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

.field public mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

.field private final mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

.field private final mCallLogListItemHelper:Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

.field private final mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsVolteEnabled:Z

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mScrollState:I

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryLongActionListener:Landroid/view/View$OnLongClickListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/dialer/calllog/CallLogAdapter;->buildcarrier:Ljava/lang/String;

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/dialer/calllog/CallLogAdapter;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x37

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->SEP_INT:I

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->doNotGroup:Z

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->disableCallButton:Z

    const-wide v0, 0x4090e00000000000L

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->FHD_WIDTH:D

    const-wide v0, 0x4096800000000000L

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->WQHD_WIDTH:D

    iput v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mScrollState:I

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$1;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$2;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$4;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$5;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mSecondaryLongActionListener:Landroid/view/View$OnLongClickListener;

    iput-boolean p4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/dialer/calllog/CallLogFragment;

    sput-object v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    :cond_2
    :goto_0
    instance-of v0, v1, Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    if-nez v0, :cond_3

    instance-of v0, v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    if-nez v0, :cond_3

    instance-of v0, v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    if-eqz v0, :cond_6

    :cond_3
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->disableCallButton:Z

    :goto_1
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    new-instance v0, Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    const-string v3, "CallLogAdapter"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-direct {v1, v0}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    new-instance v2, Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v2, v0}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    new-instance v2, Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/dialer/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;)V

    new-instance v1, Lcom/android/dialer/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/dialer/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    new-instance v1, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

    invoke-direct {v1, v0}, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

    new-instance v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    :cond_4
    instance-of v0, v1, Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    goto :goto_0

    :cond_5
    instance-of v0, v1, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    goto/16 :goto_0

    :cond_6
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->disableCallButton:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 65

    const-string v3, "CallLogAdapter"

    const-string v4, "bindView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/dialer/calllog/CallLogListItemViews;

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setSeperator(Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/database/Cursor;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    const/4 v3, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v10

    const v3, 0x7f0800c9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v59

    if-eqz v59, :cond_0

    move-object/from16 v0, v59

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    const-string v3, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, v62

    iget-object v12, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProviderForOrange(Lcom/android/dialer/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const v3, 0x7f0800c2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableCallButtonInList()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->disableCallButton:Z

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    sget-object v3, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_3
    const/4 v3, 0x4

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_1
    const/4 v3, 0x4

    move/from16 v0, v52

    if-ne v0, v3, :cond_f

    const/16 v3, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move-object/from16 v0, v63

    invoke-static {v5, v6, v0}, Lcom/android/dialer/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindView fragment_state : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    if-nez v3, :cond_12

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_6

    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindView mCallLogFragment : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", getSelectionMode() : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v7}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v3

    if-nez v3, :cond_11

    const v3, 0x7f08007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    new-instance v58, Lcom/samsung/dialer/calllog/NumberWithCountryIso;

    move-object/from16 v0, v58

    invoke-direct {v0, v8, v9}, Lcom/samsung/dialer/calllog/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v3, v3, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v50

    if-nez v50, :cond_14

    const/16 v53, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_7
    sget-object v53, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    :cond_8
    :goto_5
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    move/from16 v23, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v53

    iget-wide v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    move-wide/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v13, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v16

    const/4 v3, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "+ number : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", contactId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    iget v7, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v29, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static/range {v57 .. v57}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v25, :cond_19

    new-instance v11, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/16 v26, 0x0

    move-object/from16 v0, v53

    iget v3, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    int-to-long v0, v3

    move-wide/from16 v27, v0

    const/16 v30, 0x0

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v22, v8

    invoke-direct/range {v11 .. v30}, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V

    :goto_6
    const-string v3, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x3b6

    if-ne v3, v4, :cond_1b

    const/16 v55, 0x1

    :goto_7
    move/from16 v34, v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v32, v62

    move-object/from16 v33, v11

    move/from16 v35, p3

    invoke-virtual/range {v30 .. v35}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v62

    invoke-virtual {v3, v4, v0, v11}, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;->setListItemInfo(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0x8

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-nez v25, :cond_1f

    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contactId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    iget v7, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    move-object/from16 v36, v0

    move-object/from16 v35, p0

    move-wide/from16 v37, v60

    move-wide/from16 v39, v5

    invoke-direct/range {v35 .. v40}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Landroid/widget/ImageView;JJ)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->getCnamIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v54

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/dialer/calllog/CallLogAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v4, v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter$6;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_8
    if-eqz v57, :cond_21

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0112

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_9
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableYellowPage()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static/range {v57 .. v57}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v4, v8}, Lcom/samsung/dialer/calllog/YellowPageCallerid;->getYellowPageNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detail.name from yp : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v64 .. v64}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v3, v3, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v3, v3, Lcom/android/dialer/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_c
    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->groupCount:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v56, Lcom/android/dialer/calllog/CallLogAdapter$7;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    move-object/from16 v2, v62

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter$7;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViews;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/dialer/calllog/CallLogAdapter$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v56

    invoke-direct {v4, v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter$8;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    move-object/from16 v0, v62

    iget-object v12, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/dialer/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const-string v3, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v4, 0x7f0800bc

    invoke-virtual {v3, v4, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_11
    const v3, 0x7f08007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    check-cast v3, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget-boolean v3, v3, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isSelectOneItem:Z

    if-eqz v3, :cond_13

    const v3, 0x7f08007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_13
    const v3, 0x7f08007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_14
    invoke-interface/range {v50 .. v50}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v53, v3

    goto/16 :goto_4

    :cond_15
    if-nez v50, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v3, v3, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    sget-object v4, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0, v4}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v53, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mScrollState:I

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;ZI)V

    goto/16 :goto_5

    :cond_16
    invoke-interface/range {v50 .. v50}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mScrollState:I

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;ZI)V

    :cond_17
    :goto_a
    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_8

    move-object/from16 v53, v10

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    move-object/from16 v0, v53

    invoke-virtual {v3, v10, v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mScrollState:I

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;ZI)V

    goto :goto_a

    :cond_19
    invoke-static/range {v57 .. v57}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v11, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const-string v41, ""

    const/16 v42, 0x0

    const-string v43, ""

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v53

    iget v3, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    int-to-long v0, v3

    move-wide/from16 v46, v0

    const/16 v49, 0x0

    move-object/from16 v30, v11

    move-object/from16 v31, v8

    move-object/from16 v32, v13

    move-object/from16 v33, v9

    move-object/from16 v34, v15

    move-object/from16 v35, v16

    move-wide/from16 v36, v17

    move-wide/from16 v38, v19

    move/from16 v40, v21

    move-object/from16 v48, v29

    invoke-direct/range {v30 .. v49}, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1a
    new-instance v11, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/16 v26, 0x0

    move-object/from16 v0, v53

    iget v3, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    int-to-long v0, v3

    move-wide/from16 v27, v0

    const/16 v30, 0x0

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v22, v57

    invoke-direct/range {v11 .. v30}, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1b
    const/16 v55, 0x0

    goto/16 :goto_7

    :cond_1c
    const/16 v3, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1d

    const/16 v55, 0x1

    :goto_b
    goto/16 :goto_7

    :cond_1d
    const/16 v55, 0x0

    goto :goto_b

    :cond_1e
    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    goto/16 :goto_8

    :cond_1f
    const-string v3, "CallLogAdapter"

    const-string v4, "quickContactView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v36, v0

    move-object/from16 v0, v53

    iget v3, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    int-to-long v0, v3

    move-wide/from16 v39, v0

    move-object/from16 v35, p0

    move-wide/from16 v37, v60

    invoke-direct/range {v35 .. v40}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Landroid/widget/ImageView;JJ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    if-nez v3, :cond_20

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhotoLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_8

    :cond_20
    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setLongClickable(Z)V

    goto/16 :goto_8

    :cond_21
    if-eqz v8, :cond_a

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0112

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x2

    const-string v3, "CallLogAdapter"

    const-string v4, "========= findAndCacheViews ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v2

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v3, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mSecondaryLongActionListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-wide v3, Lcom/android/dialer/calllog/CallLogFragment;->mWidth:D

    const-wide v5, 0x4090e00000000000L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    const/16 v3, 0xe6

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-wide v3, Lcom/android/dialer/calllog/CallLogFragment;->mWidth:D

    const-wide v5, 0x4096800000000000L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    const/16 v3, 0x12c

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v0
.end method

.method private setPhoto(Landroid/widget/ImageView;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    return-void
.end method

.method private setSeperator(Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeperator, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogDate_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogDate_text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0447

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method


# virtual methods
.method public CallLogNotifyDataSetChanged()V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= CallLogNotifyDataSetChanged ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addGroup(IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->doNotGroup:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;Z)V

    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3, p4}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method public checkFontSize(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->checkFontSize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequestProcessingDisabled:Z

    return-void
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLimitedItemId()J
    .locals 7

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogAdapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v6, v3, v1

    if-lez v6, :cond_0

    move-wide v1, v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v5, 0x7f08007e

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "CallLogAdapter"

    const-string v1, "getView is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView - position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallLogAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView - (TwSweepActionListView) parent).isItemChecked(position + 1) : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_1
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p3, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    check-cast v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget-object v1, v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p3, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public getVolteEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsVolteEnabled:Z

    return v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 2

    new-instance v0, Lcom/samsung/dialer/calllog/NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/samsung/dialer/calllog/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v1, v1, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public invalidateCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->stopRequestProcessing()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CallLogAdapter"

    const-string v2, "========= newChildView ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CallLogAdapter"

    const-string v2, "========= newGroupView ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CallLogAdapter"

    const-string v2, "========= newStandAloneView ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;->fetchLogs()V

    :cond_0
    const-string v0, "CallLogAdapter"

    const-string v1, "onContentChanged is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->sendEmptyMessageDelayed()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    sput-object p1, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    iput p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mScrollState:I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setScrollState(I)V

    return-void
.end method
