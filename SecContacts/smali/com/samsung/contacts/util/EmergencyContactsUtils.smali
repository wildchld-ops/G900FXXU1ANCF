.class public Lcom/samsung/contacts/util/EmergencyContactsUtils;
.super Ljava/lang/Object;
.source "EmergencyContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;
    }
.end annotation


# static fields
.field private static final EMERGENCY_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/contacts/util/EmergencyContactsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/util/EmergencyContactsUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "default_emergency"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phone_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/util/EmergencyContactsUtils;->EMERGENCY_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmergencyContactData(Landroid/content/Context;J)Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;
    .locals 8

    const/4 v4, 0x0

    const-string v0, "content://com.android.contacts/emergency/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/contacts/util/EmergencyContactsUtils;->EMERGENCY_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;

    invoke-direct {v7}, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->id:J

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->number:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->defaultEmergency:I

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->phoneDataId:J

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method public static startPhoneCall(Landroid/content/Context;J)V
    .locals 6

    invoke-static {p0, p1, p2}, Lcom/samsung/contacts/util/EmergencyContactsUtils;->getEmergencyContactData(Landroid/content/Context;J)Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->number:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/contacts/util/EmergencyContactsUtils$EmergencyContactData;->number:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/contacts/sim/list/ListSimManager;->getCallIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/contacts/util/EmergencyContactsUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from Start Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
