.class public Lcom/samsung/contacts/sim/MakeSim2DBService;
.super Landroid/app/Service;
.source "MakeSim2DBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/sim/MakeSim2DBService$1;,
        Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;
    }
.end annotation


# static fields
.field static final ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

.field static final ADN_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_EMAILS_PROJECTION:[Ljava/lang/String;

.field private static volatile ADN_INDEX_COLUMN_INDEX:I

.field static final ADN_PROJECTION:[Ljava/lang/String;

.field private static volatile ANR_A_NUMBER_COLUMN_INDEX:I

.field private static volatile ANR_B_NUMBER_COLUMN_INDEX:I

.field private static volatile ANR_C_NUMBER_COLUMN_INDEX:I

.field private static volatile ANR_NUMBER_COLUMN_INDEX:I

.field private static volatile EMAIL_COLUMN_INDEX:I

.field private static volatile NAME_COLUMN_INDEX:I

.field private static volatile NUMBER_COLUMN_INDEX:I

.field private static TAG:Ljava/lang/String;

.field private static mBatchCounter:I

.field private static mIsBlockFormatMyProfile:Z

.field private static mLastBatch:I

.field private static mLastOneBatchCount:I

.field static final mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimSlotId:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCursor:Landroid/database/Cursor;

.field private mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

.field private mProviderStatus:I

.field private mResolver:Landroid/content/ContentResolver;

.field private volatile mServiceHandler:Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-string v0, "MakeSim2DBService"

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "anrA_number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "emails"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "anrA_number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v3

    const-string v1, "adn_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    sput v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    sput v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    sput v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastBatch:I

    sput v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    sput v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mIsBlockFormatMyProfile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->getOperation()Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    return-void
.end method

.method private CompareAdnData(III)V
    .locals 3

    :goto_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getPBInitKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doCompareData(III)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/contacts/sim/MakeSim2DBService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doInitAction(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/sim/MakeSim2DBService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doQueryAction(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/sim/MakeSim2DBService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doAirPlaneAction(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/sim/MakeSim2DBService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doCheckAdnAttribute(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/contacts/sim/MakeSim2DBService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doBtSapAction(IIZ)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 12

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_0

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    if-le v4, v7, :cond_0

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "account_name"

    iget-object v11, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "account_type"

    iget-object v11, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "sourceid"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v9, "raw_contact_id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v9, "data2"

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "raw_contact_id"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "mimetype"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data2"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data1"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "is_primary"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "raw_contact_id"

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "data2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "data1"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "is_primary"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "raw_contact_id"

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "data2"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "data1"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "is_primary"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v4, :cond_9

    array-length v1, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_9

    aget-object v2, v4, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v5, "raw_contact_id"

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "data2"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "data1"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_a

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastBatch:I

    if-ne v0, v1, :cond_b

    :cond_a
    :try_start_0
    const-string v0, "com.android.contacts"

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mBatchCounter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_b
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private checkAndUpdateAdnEditable()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEditable(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_1

    if-eq v1, v5, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEditable(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEditable(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkProviderState()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v7

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method private doAirPlaneAction(I)V
    .locals 4

    const-string v0, "airplane_mode_db_updated"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doAirPlaneAction : isAirPlainDbUpdated= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ doAirPlaneAction : stop Service and send broadcasting com.samsung.intent.action.PB2_SYNC startId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.PB2_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->stopSelfResult(I)Z

    return-void
.end method

.method private doBtSapAction(IIZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doInitAction(II)V

    goto :goto_0
.end method

.method private doCheckAdnAttribute(II)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isFDNEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEditable(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doCheckAdnAttribute isAdnEditable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    if-eq v2, v7, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEditable(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getFdnOnAdnDeleted(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->preserveInitStatusForFDN()V

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doCheckAdnAttribute settingValue(FDNEnable) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    :goto_1
    return-void

    :cond_2
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEditable(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getFdnOnAdnDeleted(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doCheckAdnAttribute isAdnDeleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doCheckAdnAttribute settingValue(FDNDisable) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_5
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_1
.end method

.method private doCheckSimState(II)V
    .locals 11

    iget-object v8, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doCheckSimState simState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget-object v8, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v9, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v8, v9}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getCardStatus(I)I

    move-result v0

    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@ doCheckSimState isAirPalneMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  cardStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    if-nez v3, :cond_0

    const/4 v5, 0x6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_0

    monitor-enter p0

    const-wide/16 v8, 0x1388

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    iget-object v8, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    packed-switch v7, :pswitch_data_0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    :cond_3
    :try_start_2
    monitor-exit p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :pswitch_0
    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v9, "@@ doCheckSimState: UNKNOWN"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_2

    :pswitch_1
    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v9, "@@ doCheckSimState: No SIM"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    :pswitch_2
    const/16 v8, 0x270f

    if-ne p1, v8, :cond_5

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isIccCardChanged()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v9, "@@ SIM card is changed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    :goto_3
    sget-boolean v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->mIsBlockFormatMyProfile:Z

    if-eqz v8, :cond_1

    const-string v8, "setInitialMyProfile"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_8

    :goto_4
    const-string v8, "FINISH"

    const-string v9, "persist.sys.setupwizard"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    monitor-enter p0

    :try_start_3
    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v9, "@@ waiting for finishing setupwizard"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    :cond_5
    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doCheckSimState: SIM READY opCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ doCheckSimState: simState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    const/16 v8, 0x270f

    if-ne p1, v8, :cond_7

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isFDNEnabled()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v2

    if-eqz v4, :cond_6

    if-nez v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doCheckAdnAttribute(II)V

    goto :goto_3

    :cond_6
    const/4 v8, 0x5

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    goto :goto_3

    :cond_7
    const/4 v8, 0x5

    invoke-direct {p0, p1, v8, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doWriteSIMProfile()V

    const-string v8, "setInitialMyProfile"

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto/16 :goto_2

    :catch_1
    move-exception v8

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private doCompareData(III)V
    .locals 18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v4}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getRawContactsADNUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v10, :cond_6

    if-eqz v17, :cond_6

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbCursor count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "    simCursor count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@ 1st Count is different break"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v17, :cond_1

    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v17, :cond_1

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v15, Landroid/database/CursorJoiner;

    move-object/from16 v0, v17

    invoke-direct {v15, v10, v3, v0, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/CursorJoiner$Result;

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v14}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v11, v11, 0x1

    :goto_3
    :pswitch_1
    if-lez v11, :cond_5

    const/4 v12, 0x1

    :cond_6
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    if-nez v12, :cond_10

    const/4 v10, 0x0

    const/16 v17, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getRawContactsADNEmailsUri(I)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getADNEmailsUri(I)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v10, :cond_e

    if-eqz v17, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@ 2nd Count is different break"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    :cond_c
    :try_start_4
    new-instance v15, Landroid/database/CursorJoiner;

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v15, v10, v1, v0, v2}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/CursorJoiner$Result;

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v14}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    add-int/lit8 v11, v11, 0x1

    :goto_5
    :pswitch_4
    if-lez v11, :cond_d

    const/4 v12, 0x1

    :cond_e
    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v17, :cond_10

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v12, :cond_13

    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@ diff found Goto delete"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :catchall_1
    move-exception v1

    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v17, :cond_12

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v1

    :cond_13
    invoke-direct/range {p0 .. p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private doDeleteSIMProfile(Ljava/lang/String;)Z
    .locals 12

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@ doDeleteSIMProfile: "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "data1"

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "data2"

    aput-object v2, v4, v0

    const-string v11, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doDeleteSimDB(III)V
    .locals 12

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ doDeleteSimDB: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v7, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ db delete time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v8, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "Wrong sim status"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@ doDeleteSimDB Go to last action "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@ doDeleteSimDB Go to Write action "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doWriteSimDB(III)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doInitAction(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doCheckSimState(II)V

    return-void
.end method

.method private doLastAction(III)V
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doLastAction : settingValue= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doLastAction : simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " opCode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setRuntimeFirstBootTime()V

    move v0, v2

    :goto_0
    if-eqz p2, :cond_0

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v2, "@@  NOTIFY !!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.CONTACT_DB_CHANGED_FOR_FINGERPRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-direct {p0, p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doStopService(I)V

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "airplane_mode_changed"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    const-string v4, "airplain_init_sim_status"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@@ 7777 initStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v4, v8

    if-nez v2, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/samsung/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    move v0, v1

    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "airplane_mode_changed"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    goto/16 :goto_1

    :sswitch_2
    const/4 v3, 0x7

    if-ne p2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->updateAdnDeletedStatus(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getFDNOnInitSimStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ 6666 initStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v2, v8

    if-nez v4, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_2
        0x1e61 -> :sswitch_1
        0x270f -> :sswitch_0
    .end sparse-switch
.end method

.method private doQueryAction(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doStopService(I)V

    return-void
.end method

.method private doStopService(I)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "setInitialMyProfile"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    sget-boolean v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mIsBlockFormatMyProfile:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ waiting for finishing setupwizard"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doWriteSIMProfile()V

    const-string v0, "setInitialMyProfile"

    invoke-direct {p0, v0, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->stopSelfResult(I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private doWriteSIMProfile()V
    .locals 22

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v4, "@@ doWriteSIMProfile: "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v18

    sget-boolean v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mIsBlockFormatMyProfile:Z

    if-eqz v2, :cond_1

    const-string v2, "setInitialMyProfile"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v21

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doDeleteSIMProfile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v4, "@@ SIM PhoneNumber is empty & Not AT&T device "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_name"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_type"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "data"

    const-string v6, "profile/data"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v12, 0x0

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const-string v7, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v8, v2

    const/4 v2, 0x1

    const-string v9, "vnd.android.cursor.item/phone_v2"

    aput-object v9, v8, v2

    const/4 v2, 0x2

    const-string v9, "2"

    aput-object v9, v8, v2

    const/4 v2, 0x3

    aput-object v18, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v18, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_super_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_2
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "account_name"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    const-string v19, "-1"

    if-eqz v20, :cond_9

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_9
    sget-boolean v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mIsBlockFormatMyProfile:Z

    if-eqz v2, :cond_a

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    :goto_4
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const-string v7, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v8, v2

    const/4 v2, 0x1

    const-string v9, "vnd.android.cursor.item/phone_v2"

    aput-object v9, v8, v2

    const/4 v2, 0x2

    const-string v9, "2"

    aput-object v9, v8, v2

    const/4 v2, 0x3

    aput-object v18, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "raw_contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_super_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_d
    const/4 v14, 0x0

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v2, "raw_contact_id = ? AND mimetype = ? AND data2 = ? AND data1 = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v6, 0x1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v18, v4, v6

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "is_super_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v15

    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private doWriteSimDB(III)V
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    sput v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    sput v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    :goto_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getPBInitKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastBatch:I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ WriteAllSimContactsThread mLastBatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->mLastBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getColumnIndex(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getCallingUri()Landroid/net/Uri;
    .locals 4

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getAdnAnrUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ calling uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getAdnUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 2

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "anr_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const-string v1, "anrA_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    const-string v1, "anrB_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    const-string v1, "anrC_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    :cond_0
    const-string v1, "emails"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    const-string v1, "adn_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    return-void
.end method

.method private getIntPreferenceValue(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProjection(I)[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x3

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ Can\'t get a projection it use wrong projecion type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    if-lez v0, :cond_1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ ADN_ANR_FULL_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ ADN_ANR_PATIAL_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ ADN_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    if-lez v0, :cond_3

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ ADN_ANR_FULL_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ ADN_ANR_PATIAL_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ ADN_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->ADN_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimAccountStatus()J
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ungrouped_visible"

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v3, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->isSimAccount(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v7
.end method

.method private isAdnEditable()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getICCType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    if-nez v0, :cond_2

    const-string v0, "ril.IsCSIM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :cond_2
    const-string v0, "ril.IsCSIM2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v2, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    sput-boolean v3, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    const/16 v3, 0x6f3a

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_2
    sput-boolean v1, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    :goto_3
    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ AdnEditalbe simStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v0, 0x1

    and-int/lit8 v0, v0, 0x4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-boolean v1, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v4, "SecurityException"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v1, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    move v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    sput-boolean v1, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    throw v0

    :pswitch_0
    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    :pswitch_1
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFDNEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException re"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isIccCardChanged()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "1"

    iget-object v7, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangeKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "1"

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return v4

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method private preserveInitStatusForFDN()V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getSimAccountStatus()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getFDNOnInitSimStatus(I)Ljava/lang/String;

    move-result-object v2

    long-to-int v3, v0

    invoke-direct {p0, v2, v3}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    return-void
.end method

.method private sendMessage(III)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput p3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setIntPreferenceValue(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setRuntimeFirstBootTime()V
    .locals 7

    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "1"

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getIccChangedBootTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateAdnDeletedStatus(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getFdnOnAdnDeleted(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateSettingStatus(J)V
    .locals 7

    const/4 v6, 0x0

    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "ungrouped_visible"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method isSetupWizard()Z
    .locals 3

    const-string v0, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.sec.android.app.SecSetupWizard"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v2, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v3, "@@ onCreate!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v4, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v5, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimAccountType(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mAccount:Landroid/accounts/Account;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v3, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "MakeSim2DBService"

    invoke-direct {v1, v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v1, "@@ onDestory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    monitor-enter p0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    const/4 v6, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x0

    :goto_0
    iget-object v7, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;

    if-nez v7, :cond_0

    monitor-enter p0

    const-wide/16 v7, 0x64

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_0
    if-nez p1, :cond_1

    sget-object v6, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    const-string v7, "Intent is null in onStartCommand"

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "op"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v7, "slot_id"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    sget-object v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! opCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! flags = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/contacts/sim/MakeSim2DBService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! mSimSlotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    move v5, v6

    goto :goto_2

    :sswitch_0
    const-string v5, "isEnabled"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v2, p3, v6}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :sswitch_1
    if-ge p3, v5, :cond_3

    invoke-direct {p0, v2, p3, v10}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, v2, p3, v11}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :sswitch_2
    iget-object v7, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/samsung/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v11, :cond_4

    iget-object v7, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    sget v8, Lcom/samsung/contacts/sim/MakeSim2DBService;->mSimSlotId:I

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;->getSimDBReady(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/samsung/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    :cond_4
    invoke-direct {p0, v2, p3, v5}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :sswitch_3
    const/4 v5, 0x4

    invoke-direct {p0, v2, p3, v5}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :sswitch_4
    const-string v5, "service_connected"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v5, 0x5

    invoke-direct {p0, v2, p3, v5}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :cond_5
    const/4 v5, 0x6

    invoke-direct {p0, v2, p3, v5}, Lcom/samsung/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    :catch_0
    move-exception v7

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x15b3 -> :sswitch_4
        0x1a0a -> :sswitch_3
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    new-instance v0, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;-><init>(Lcom/samsung/contacts/sim/MakeSim2DBService;)V

    iput-object v0, p0, Lcom/samsung/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/samsung/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
