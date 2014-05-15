.class public Lcom/android/contacts/model/dataitem/EventDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "EventDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/EventDataItem;->getStartDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/EventDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "data15"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/contacts/impl/DateUtilsForCalendarTypeImpl;->buildDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/EventDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
