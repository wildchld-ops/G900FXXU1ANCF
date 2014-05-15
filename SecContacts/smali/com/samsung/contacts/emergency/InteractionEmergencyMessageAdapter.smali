.class public Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "InteractionEmergencyMessageAdapter.java"


# static fields
.field protected static final PROJECTION_ICE:[Ljava/lang/String;


# instance fields
.field private mDefaultCountryIso:Ljava/lang/String;

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "default_emergency"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->mDefaultCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6

    const/16 v3, 0x10

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setData([CII)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "iw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    iget-boolean v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->mIsMultiSelectionMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->bindCheckBox(Lcom/android/contacts/common/list/ContactListItemView;Z)V

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->hideCheckBox(Lcom/android/contacts/common/list/ContactListItemView;)V

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->configureUri(Landroid/content/CursorLoader;J)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    const-string v0, "display_name"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 1

    sget-object v0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;J)V
    .locals 5

    const-string v2, "ICE"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "defaultId"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSelectedContactIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    return-void
.end method
