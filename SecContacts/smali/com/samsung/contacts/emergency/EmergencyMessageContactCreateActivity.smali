.class public Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "EmergencyMessageContactCreateActivity.java"


# static fields
.field private static final MAX_LENGTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEmergencyContactId:J

.field private mIsEditMode:Z

.field private mMenuCancel:Landroid/widget/Button;

.field private mMenuDone:Landroid/widget/Button;

.field mNameField:Landroid/widget/EditText;

.field mNumberField:Landroid/widget/EditText;

.field mNumberTitle:Landroid/widget/TextView;

.field private mOldDisplayName:Ljava/lang/String;

.field private mOldNumber:Ljava/lang/String;

.field private mPhoneDataId:J

.field private mRawContactId:J

.field private mStructuredNameDataId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->setDoneButtonEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->saveEmergencyMessageContact()V

    return-void
.end method

.method private createEmergencyContact()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "account_name"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "content://com.android.contacts/emergency/message"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "phone_data_id"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "name"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "number"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method private editEmergencyContact()V
    .locals 14

    iget-object v10, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-wide v10, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mRawContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    iget-wide v10, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mStructuredNameDataId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mStructuredNameDataId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_0
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v10, "raw_contact_id"

    iget-wide v11, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mRawContactId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mPhoneDataId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "data1"

    invoke-virtual {v0, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.android.contacts"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    const-string v10, "content://com.android.contacts/emergency"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-wide v11, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mEmergencyContactId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    const-string v10, "name"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "number"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method

.method private getRawContactId()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name_raw_contact_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mPhoneDataId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mRawContactId:J

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private getStructuredNameData()V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "data1"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mRawContactId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mStructuredNameDataId:J

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mOldDisplayName:Ljava/lang/String;

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private loadEmergencyContactData()V
    .locals 5

    iget-wide v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mEmergencyContactId:J

    invoke-static {p0, v1, v2}, Lcom/samsung/contacts/util/EmergencyContactsUtils;->getEmergencyContactData(Landroid/content/Context;J)Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to load emergency contact data"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-wide v1, v0, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->phoneDataId:J

    iput-wide v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mPhoneDataId:J

    iget-wide v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mPhoneDataId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mOldDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v0, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mOldNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mOldNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getRawContactId()V

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getStructuredNameData()V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mOldDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private saveEmergencyMessageContact()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mIsEditMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->editEmergencyContact()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->createEmergencyContact()V

    goto :goto_0
.end method

.method private setDoneButtonEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public actionBarSetup()Landroid/app/ActionBar;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f030062

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030095

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mIsEditMode:Z

    iget-boolean v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mIsEditMode:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0e002d

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mEmergencyContactId:J

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->actionBarSetup()Landroid/app/ActionBar;

    const v1, 0x7f0801d2

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    const v1, 0x7f0801d4

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    sget v4, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->MAX_LENGTH:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    sget v4, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->MAX_LENGTH:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0801d3

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberTitle:Landroid/widget/TextView;

    const v2, 0x7f0e023f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$1;-><init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextDirection(I)V

    iget-boolean v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mIsEditMode:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->loadEmergencyContactData()V

    :cond_2
    return-void

    :cond_3
    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancel:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;-><init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    const v2, 0x7f0e0295

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$3;-><init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->setDoneButtonEnabled()V

    const/4 v1, 0x0

    return v1
.end method
