.class public Lcom/android/mms/widget/NoticeThreadContactSelector;
.super Landroid/app/Activity;
.source "NoticeThreadContactSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field public static final DATA_PROJECTION:[Ljava/lang/String; = null

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_NUMBER_OF_CONTACTS:I = 0x800000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field static final QUERY_TOKEN:I = 0x2a

.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final SUMMARY_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_HAS_EMAIL_COLUMN_INDEX:I = 0x6

.field static final SUMMARY_HAS_PHONE_NUMBER_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_HAS_Phone_TYPE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x4

.field static final SUMMARY_PRIMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x8

.field static final SUMMARY_RAW_CONTACTS_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x2

.field private static mToastHandler:Landroid/os/Handler;


# instance fields
.field public IneractionCheck:Z

.field imageTemp:Landroid/graphics/Bitmap;

.field isPhoneNumber:Z

.field isPhotoAvaiable:Z

.field private mAppWidgetId:I

.field mContactUri:Landroid/net/Uri;

.field private mDbControll:Lcom/android/mms/widget/NoticeDBControl;

.field private mPosition:I

.field mSortOrder:Ljava/lang/String;

.field mStrNumber:Ljava/lang/String;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field phoneNumberIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mToastHandler:Landroid/os/Handler;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_super_primary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->DATA_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "contact_presence"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "in_visible_group"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_file_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mContactUri:Landroid/net/Uri;

    const-string v0, "display_name_alt COLLATE LOCALIZED ASC"

    iput-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mSortOrder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStrNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->isPhoneNumber:Z

    iput-boolean v1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->isPhotoAvaiable:Z

    iput-object v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->imageTemp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    const-string v3, "Latin-1"

    invoke-static {p0, v1, v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_0

    const-string v2, "Latin-1"

    invoke-static {p0, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected LoadUriData(Landroid/net/Uri;IIJ)V
    .locals 51

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/mms/widget/NoticeThreadContactSelector;->queryPhoneNumbers(JJ)Landroid/database/Cursor;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, " == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v40, -0x1

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "_id"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " == \'"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v44

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "raw_contact_id"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    if-eqz v42, :cond_0

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "raw_contact_id"

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    :cond_0
    if-eqz v42, :cond_1

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mContactUri:Landroid/net/Uri;

    sget-object v9, Lcom/android/mms/widget/NoticeThreadContactSelector;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mSortOrder:Ljava/lang/String;

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeThreadContactSelector;->startManagingCursor(Landroid/database/Cursor;)V

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v35, -0x1

    const/16 v32, 0x0

    const/16 v43, 0x0

    if-eqz v36, :cond_5

    :cond_2
    const-string v4, "is_super_primary"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_3

    const-string v4, "data2"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const-string v4, "data3"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v4, "data1"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    :cond_3
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v32, :cond_4

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "data2"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const-string v4, "data3"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v4, "data1"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    :cond_4
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    const/16 v36, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->isPhoneNumber:Z

    :cond_5
    new-instance v4, Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v4, :cond_8

    const-wide/16 v37, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    new-instance v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;

    invoke-direct {v13}, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;-><init>()V

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->phoneType:Ljava/lang/String;

    move-wide/from16 v0, v40

    iput-wide v0, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->rawcontactId:J

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemName:Ljava/lang/String;

    move-object/from16 v0, v43

    iput-object v0, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    const-string v4, "display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNamePrimary:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;->getThreadId(Ljava/lang/String;)J

    move-result-wide v46

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->queryReceiveMessage(J)Landroid/database/Cursor;

    move-result-object v31

    const-wide/16 v20, 0x0

    const/16 v45, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v48, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    if-eqz v31, :cond_6

    :try_start_0
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "date"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v17

    const-string v4, "locked"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const-string v4, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const-string v4, "transport_type"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    const-string v4, "sms"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "body"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v45

    :cond_6
    :goto_0
    if-eqz v31, :cond_7

    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_7
    new-instance v50, Landroid/content/ContentValues;

    invoke-direct/range {v50 .. v50}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "thread_id"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "contact_id"

    iget-wide v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "display_name"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemName:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "display_number"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "subject"

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "current"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "count"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "message_id"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "position"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "widget_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "display_name_primary"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNamePrimary:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "raw_contact_id"

    iget-wide v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->rawcontactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "marked"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "NoticeThreadContactSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Number = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v4, v37, v4

    if-nez v4, :cond_f

    const-string v4, "photo"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/mms/widget/NoticeSettingManager;->addThreadCount(Landroid/content/Context;IZ)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    :cond_9
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v36, :cond_b

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    const/16 v36, 0x0

    :cond_b
    return-void

    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    const-string v5, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/widget/NoticeDBControl;->queryMmsBody(I)Ljava/lang/String;

    move-result-object v45

    const-wide/16 v4, 0x3e8

    mul-long v20, v20, v4

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v45

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v31, :cond_e

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    :cond_f
    const/16 v34, 0x0

    const-string v4, "photo_file_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    sget-object v4, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v34

    :goto_3
    if-eqz v34, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeThreadContactSelector;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    :cond_10
    :goto_4
    const-string v4, "photo"

    iget-object v5, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mDbControll:Lcom/android/mms/widget/NoticeDBControl;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/android/mms/widget/NoticeDBControl;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/mms/widget/NoticeSettingManager;->addThreadCount(Landroid/content/Context;IZ)V

    goto/16 :goto_2

    :cond_11
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->contactId:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v27

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeThreadContactSelector;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/widget/NoticeThreadContactSelector$ContactListItem1;->itemImage:[B

    goto :goto_4

    :catch_0
    move-exception v4

    if-eqz v31, :cond_7

    goto/16 :goto_1

    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 21

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/16 v1, 0x3b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_7

    const-string v1, "phone_data_id"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    const-string v20, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/widget/NoticeThreadContactSelector;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v4, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const-wide/16 v10, -0x1

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v15, 0x0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    :cond_2
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "is_super_primary"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const/4 v15, 0x1

    :cond_3
    if-nez v15, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mPosition:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/widget/NoticeThreadContactSelector;->LoadUriData(Landroid/net/Uri;IIJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->finish()V

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    const-string v1, "phone_data_id"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const-string v2, "InteractionCheck"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    iput v4, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mAppWidgetId:I

    invoke-static {v2, v3}, Lcom/android/mms/widget/NoticeSettingManager;->getThreadCount(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mPosition:I

    iget v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->mPosition:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/android/mms/widget/NoticeThreadContactSelector;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/widget/NoticeThreadContactSelector$1;

    invoke-direct {v3, p0}, Lcom/android/mms/widget/NoticeThreadContactSelector$1;-><init>(Lcom/android/mms/widget/NoticeThreadContactSelector;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_speed_dial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "has_result"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/widget/NoticeThreadContactSelector;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03f4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InteractionCheck"

    iget-boolean v1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector;->IneractionCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v7

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    goto :goto_0
.end method

.method public queryPhoneNumbers(JJ)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=?AND _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v7

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    goto :goto_0
.end method
