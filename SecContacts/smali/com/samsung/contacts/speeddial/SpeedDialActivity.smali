.class public Lcom/samsung/contacts/speeddial/SpeedDialActivity;
.super Landroid/app/ListActivity;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;,
        Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedDialDialogListener;,
        Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;,
        Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;


# instance fields
.field SpinListener:Landroid/view/View$OnClickListener;

.field private isCtcDuos:Z

.field private isCtcSingle:Z

.field private mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

.field private mAppPreloadedSplNum:I

.field private mDetailViewUri:Landroid/net/Uri;

.field private mIsAppPreloadedSpl:Z

.field private mIsFromDetail:Z

.field private mIsHelpMode:Z

.field private mIsRangeChange:Z

.field private mList:Landroid/widget/ListView;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;

.field protected mSelectedNumber:I

.field private mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

.field private mSpdlRange:Landroid/widget/TextView;

.field private mSpinLayout:Landroid/widget/RelativeLayout;

.field protected mSpinRange:I

.field private mStartNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z

    iput v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    iput-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsRangeChange:Z

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->isDisableVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcDuos:Z

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->isDisableVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcSingle:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsAppPreloadedSpl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAppPreloadedSplNum:I

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->SpinListener:Landroid/view/View$OnClickListener;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;JLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcDuos:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsRangeChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlRange:Landroid/widget/TextView;

    return-object v0
.end method

.method private assignSpeedDial(JLandroid/net/Uri;)V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key_number"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "speed_dial_data_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0e03d4

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->finish()V

    :cond_1
    if-nez p3, :cond_2

    const-string v2, "SpeedDialActivity"

    const-string v3, "Contact uri is null, contact does not exist."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startQuery()V

    goto :goto_0
.end method

.method private customActivityResult(ILandroid/content/Intent;)V
    .locals 15

    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int v13, v1, v2

    const-wide/16 v11, -0x1

    const-wide/16 v7, -0x1

    const-string v1, "contact_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_1

    const-string v1, "SpeedDialActivity"

    const-string v2, "customActivityResult : contactId is -1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_4

    const-string v1, "SpeedDialActivity"

    const-string v2, "customActivityResult : dataId is -1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key_number"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "speed_dial_data_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v1, "SpeedDialActivity"

    const-string v2, "customActivityResult : Contact uri is null, contact does not exist."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startQuery()V

    goto/16 :goto_0
.end method

.method private getOnePhoneNumberId()J
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v9, -0x1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    const-string v11, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v13, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v9
.end method

.method private isDisplayOrderPriMary()Z
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMatchedAppPLSpl(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsAppPreloadedSpl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAppPreloadedSplNum:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultAppPreloadedSpl()V
    .locals 10

    const v9, 0x7f0e03f1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_AddPreloadedSpeedDialAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_4

    aget-object v5, v1, v2

    if-eqz v5, :cond_2

    aget-object v5, v1, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "SpeedDialActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultAppPreloadedSpl error :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const-string v5, "Service"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    :goto_2
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAppPreloadedSplNum:I

    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAppPreloadedSplNum:I

    if-le v5, v8, :cond_0

    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAppPreloadedSplNum:I

    const/16 v6, 0x64

    if-gt v5, v6, :cond_0

    const-string v5, "spdl_idx"

    aget-object v6, v1, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    if-eqz v3, :cond_6

    const/4 v5, 0x3

    aget-object v5, v1, v5

    :goto_3
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phone"

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, ""

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0e03f0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    iget v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAppPreloadedSplNum:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsAppPreloadedSpl:Z

    goto/16 :goto_0

    :cond_5
    const-string v5, "Emergency"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method private startQuery()V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_number >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND key_number < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;

    const/4 v1, 0x0

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    const-string v7, "key_number ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected deleteSpdl(I)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "spdl_idx"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "raw_contact_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "photo_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phone"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v1, p1, v2

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->notifyDataSetChanged()V

    const/4 v2, 0x1

    return v2
.end method

.method public doShowPicker()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data3"

    aput-object v1, v2, v0

    const-string v12, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    new-instance v11, Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;

    invoke-direct {v11, p0, p0, v7}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v8, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;

    invoke-direct {v8, p0, v7, v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/database/Cursor;Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, -0x1

    invoke-virtual {v6, v11, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected enableHelpMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z

    return-void
.end method

.method public getSpeedListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;
    .locals 7

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "spdl_idx"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "phone"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, ""

    aput-object v1, v5, v0

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    const v4, 0x7f03011b

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0xc9t 0x2t 0x8t 0x7ft
        0x52t 0x0t 0x8t 0x7ft
        0xcdt 0x2t 0x8t 0x7ft
        0xcft 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method protected insertSpdl(I)Z
    .locals 6

    const/4 v5, 0x1

    iget v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v3, p1, v3

    iput v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget-boolean v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getOnePhoneNumberId()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowPicker()V

    :goto_0
    return v5

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "from_speed_dial"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "index"

    iget v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public makeSpdlList(Landroid/database/Cursor;)V
    .locals 19

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key_number"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v1, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v17, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :goto_1
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "contact_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v7, v16

    :cond_3
    const-string v1, "photo_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const-string v1, "number"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "display_name_alt"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isDisplayOrderPriMary()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v8, v9

    :cond_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spdl_idx"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "raw_contact_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "contact_id"

    invoke-virtual {v11, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "photo_id"

    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-virtual {v11, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    invoke-virtual {v11, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e03ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-int v1, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v18, v1, v2

    if-ltz v18, :cond_0

    const/16 v1, 0x64

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v1, v0, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public makedefaultList()V
    .locals 10

    const v9, 0x7f0e0221

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcDuos:Z

    if-nez v5, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    const-string v5, "phone2"

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    :goto_0
    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    add-int/lit8 v5, v5, 0x64

    if-ge v1, v5, :cond_5

    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    iget v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    sub-int/2addr v5, v6

    add-int v4, v5, v1

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsRangeChange:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSpeedListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-virtual {v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->notifyDataSetChanged()V

    iput-boolean v7, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsRangeChange:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "spdl_idx"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v4, v8, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcSingle:Z

    if-nez v5, :cond_4

    const-string v5, "name"

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phone"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, ""

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v5, "name"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phone"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->setDefaultAppPreloadedSpl()V

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsRangeChange:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSpeedListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-virtual {v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->notifyDataSetChanged()V

    iput-boolean v7, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsRangeChange:Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->customActivityResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "phone_data_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f02015e

    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03011a

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0309

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcSingle:Z

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    :cond_2
    iget v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mStartNumber:I

    iput v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSpeedListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialActivity$QueryHandler;

    const v3, 0x7f0802c4

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ExtendSpeedDialTo100"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    const v3, 0x7f0802c5

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0802c6

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0802c7

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlRange:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->SpinListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->SpinListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromDetail"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "contactUri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDetailViewUri:Landroid/net/Uri;

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "spin_range"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    const-string v0, "selected_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlRange:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "~"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int/lit8 v0, v0, 0x63

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int/lit8 v0, v0, 0x62

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startQuery()V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int/lit8 v0, v0, 0x63

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "spin_range"

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selected_number"

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
