.class public Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;
.super Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;
.source "InteractionGroupMemberSelectListAdapter.java"


# static fields
.field protected static final ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field protected static final ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;


# instance fields
.field private mActionCode:I

.field protected mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFromEmergencyMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "default_emergency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "default_emergency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mIsMultiSelectionMode:Z

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    invoke-virtual {p0, v1, p4, p3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :goto_2
    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mIsMultiSelectionMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {p0, v1, v8}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/common/list/ContactListItemView;Z)V

    :goto_3
    return-void

    :cond_2
    move-object v0, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v9}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->hideCheckBox(Lcom/android/contacts/common/list/ContactListItemView;)V

    goto :goto_3
.end method

.method protected configureProjection(Landroid/content/CursorLoader;I)V
    .locals 6

    const/16 v5, 0x122

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    if-eq v1, v5, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_2

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_PRIMARY_FOR_INTERACTION:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$OrganizationGroup;->PROJECTION_ORGANIZATION_PRIMARY_FOR_INTERACTION:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    if-eq v1, v5, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    sget-object v1, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne p2, v3, :cond_7

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_ALTERNATIVE_FOR_INTERACTION:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_8

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$OrganizationGroup;->PROJECTION_ORGANIZATION_ALTERNATIVE_FOR_INTERACTION:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 9

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "InteractionGroupMemberSelectListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureSelection mActionCode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v5, 0xa0

    if-ne v3, v5, :cond_2

    const-string v3, "has_email>0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p4, v8, :cond_1

    const-string v3, " AND default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x4

    if-ne p4, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v5, 0xaa

    if-ne v3, v5, :cond_3

    const-string v3, "has_phone_number>0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p4, v8, :cond_1

    const-string v3, " AND default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v5, 0x96

    if-ne v3, v5, :cond_4

    const-string v3, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p4, v8, :cond_1

    const-string v3, " AND default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v5, 0x122

    if-ne v3, v5, :cond_1

    const-string v3, "default_emergency<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id not in (Select contact_id from emergency, view_data where default_emergency="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mIsFromEmergencyMessage:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and phone_data_id is not null and view_data._id=phone_data_id)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    const/4 v3, 0x6

    if-ne p4, v3, :cond_7

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "months"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/contact_event"

    aput-object v3, v1, v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x7

    if-ne p4, v3, :cond_8

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/organization"

    aput-object v3, v1, v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    packed-switch p4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "has_email"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mUri:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mUri:Landroid/net/Uri;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-nez v1, :cond_0

    const-string v1, "InteractionGroupMemberSelectListAdapter"

    const-string v2, "configureUri : groupInfo is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-static {v1, p1}, Lcom/samsung/contacts/util/GroupUtils;->generateGroupMemberFilterUriBuilder(Lcom/samsung/contacts/group/GroupInfo;I)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "has_email"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object v0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    return-void
.end method

.method public setIsFromEmergencyMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->mIsFromEmergencyMessage:Z

    return-void
.end method
