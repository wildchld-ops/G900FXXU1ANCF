.class public Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;
.super Landroid/app/Activity;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/ButtonUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$PerformScan;,
        Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;
    }
.end annotation


# static fields
.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field details:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

.field idsStr:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

.field private mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDoneButtonClickable:Z

.field mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mNumber:Ljava/lang/String;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field mResources:Landroid/content/res/Resources;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectedTextView:Landroid/widget/TextView;

.field public mSelection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->clearSelection()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setDoneButton(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setSelectAllChecked(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateSelectAllState(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateSelectionMenu()V

    return-void
.end method

.method private addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 3

    const v0, 0x7f030107

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    new-instance v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;-><init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearSelection()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getCallLogEntryUris()Ljava/lang/String;
    .locals 2

    const-string v0, "CallDetailDeleteActivity"

    const-string v1, "getCallLogEntryUris"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    .locals 41

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/dialer/impl/CallLogQueryImpl;->CALL_DETAIL_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_0

    :try_start_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v26, :cond_1

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    :cond_2
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    :goto_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_10

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v4, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v4, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v4, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v4, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/16 v21, 0x0

    const/16 v4, 0x12c

    if-ne v15, v4, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;

    :cond_4
    const-string v7, ""

    const-string v16, ""

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_5
    :goto_1
    new-instance v24, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    sget-object v4, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v4, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    aput v27, v10, v5

    const/16 v25, 0x0

    move/from16 v5, v31

    move-object/from16 v6, v35

    invoke-direct/range {v4 .. v25}, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;JLcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;Ljava/lang/String;)V

    aput-object v4, v29, v30

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLTNCallerIDMatch()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v33

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v32, 0x0

    invoke-static/range {v35 .. v35}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v32

    const-string v4, "CallDetailDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCallDetailsForUri: mIsSpecialNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v34

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    if-nez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :goto_2
    if-nez v30, :cond_5

    sget-object v4, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v39

    move-object/from16 v28, v35

    if-eqz v39, :cond_d

    :try_start_2
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x6

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    if-nez v40, :cond_b

    const/16 v20, 0x0

    :goto_3
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    :goto_4
    const/4 v4, 0x2

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v4, 0x3

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    const-wide/16 v4, 0x0

    cmp-long v4, v36, v4

    if-lez v4, :cond_7

    const/4 v4, 0x7

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v36

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v19

    :cond_7
    :goto_5
    if-eqz v39, :cond_8

    :try_start_3
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v7, v28

    goto/16 :goto_1

    :cond_9
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_a
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_2

    :cond_b
    :try_start_4
    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    goto :goto_3

    :cond_c
    const/4 v4, 0x4

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v28, v35

    goto :goto_5

    :cond_e
    move-object/from16 v0, v35

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v28

    goto :goto_5

    :catchall_1
    move-exception v4

    if-eqz v39, :cond_f

    :try_start_5
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object/from16 v7, v28

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_10
    if-eqz v26, :cond_11

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v29
.end method

.method private setDoneButton(II)V
    .locals 3

    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoneButton size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->onDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->onSelectionChanged(II)V

    return-void

    :cond_1
    if-lez p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "CallDetailDeleteActivity"

    const-string v2, "setSelectAllChecked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->addSelectedLog(IZ)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->removeLog(I)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->onSelectedInfoChanged()V

    return-void
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$Tasks;

    new-instance v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;-><init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSelectAllState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateSelectionMenu()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "CallDetailDeleteActivity"

    const-string v5, "updateSelectionMenu"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    sget-object v4, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e027b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v4}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v4}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateSelectAllState(Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-object v0
.end method

.method public addSelectedLog(IZ)V
    .locals 3

    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelectedLog mSelection.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->onSelectedInfoChanged()V

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public isPositionChecked(I)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "TAG"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f030017

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setContentView(I)V

    const v3, 0x7f08005d

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005f

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f08016c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1;-><init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f08016b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setButtonClickable(Z)V

    sput-object p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    new-instance v3, Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v2, Landroid/view/View;

    sget-object v3, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f02027c

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v6, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->showSelectAllHeader(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f080171

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onDoneButtonStateUpdated(Z)V
    .locals 3

    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoneButtonStateUpdated isEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v1, "CallDetailDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListView.getCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallDetailDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListView.getHeaderViewsCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallDetailDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelection.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$PerformScan;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$PerformScan;-><init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "CallDetailDeleteActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    sget-object v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setDoneButton(II)V

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateSelectionMenu()V

    return-void
.end method

.method public removeLog(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLog mSelection.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->onSelectedInfoChanged()V

    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mDoneButtonClickable:Z

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mDoneButtonClickable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
