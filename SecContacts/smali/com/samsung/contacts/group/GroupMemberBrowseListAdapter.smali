.class public Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "GroupMemberBrowseListAdapter.java"


# static fields
.field protected static final ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field protected static final ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;


# instance fields
.field private mFromEmergencyDialer:Z

.field protected mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mIsDefaultOnlyAvailable:Z

.field private mMode:I

.field protected mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mUri:Landroid/net/Uri;


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

    sput-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

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

    sput-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setHugeFontEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    const-string v0, "Events"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Organization"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 3

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/16 v1, 0xe

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/ContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 10

    const v9, 0x7f0e0294

    const/4 v8, 0x0

    const/16 v7, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    invoke-virtual {p1, v8}, Lcom/android/contacts/common/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez p2, :cond_3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0292

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    :goto_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_3
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2

    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    :goto_4
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    :goto_6
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    :goto_7
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v8}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v8}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v3, v4

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_7

    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/ContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_3
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mIsMultiSelectionMode:Z

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    invoke-virtual {p0, v1, p4, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Events"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Organization"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getStarredIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_2
    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindStarredIcon(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :goto_2
    iget-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mIsMultiSelectionMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {p0, v1, v8}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindCheckBox(Lcom/android/contacts/common/list/ContactListItemView;Z)V

    :goto_3
    return-void

    :cond_4
    move-object v0, v9

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v9}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->hideCheckBox(Lcom/android/contacts/common/list/ContactListItemView;)V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v6, :cond_6

    const-string v3, "sort_key"

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    const-string v4, "GroupMemberBrowseListAdapter"

    const-string v5, "Loader searchice projection"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContactNameDisplayOrder()I

    move-result v3

    if-ne v3, v6, :cond_3

    sget-object v4, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, p1, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;I)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    :cond_6
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-ne p2, v2, :cond_0

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->ICE_CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ne p2, v3, :cond_1

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$OrganizationGroup;->PROJECTION_ORGANIZATION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->ICE_CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$EventGroup;->PROJECTION_BIRTHDAY_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne p2, v4, :cond_6

    sget-object v1, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$OrganizationGroup;->PROJECTION_ORGANIZATION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDialer:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mIsDefaultOnlyAvailable:Z

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_emergency"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDialer:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mIsDefaultOnlyAvailable:Z

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_phone_number"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p4, v3, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne p4, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "months"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/contact_event"

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x7

    if-ne p4, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/organization"

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-nez v0, :cond_1

    const-string v0, "GroupMemberBrowseListAdapter"

    const-string v1, "configureUri : groupInfo is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-static {v0, p4}, Lcom/samsung/contacts/util/GroupUtils;->generateGroupMemberUri(Lcom/samsung/contacts/group/GroupInfo;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mUri:Landroid/net/Uri;

    const-string v0, "Events"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Organization"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/samsung/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mUri:Landroid/net/Uri;

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-nez v0, :cond_0

    const-string v0, "GroupMemberBrowseListAdapter"

    const-string v1, "configureUri : groupInfo is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-static {v0, p1}, Lcom/samsung/contacts/util/GroupUtils;->generateGroupMemberFilterUriBuilder(Lcom/samsung/contacts/group/GroupInfo;I)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    return v0
.end method

.method public isDefaultIce(I)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    const/16 v3, 0xe

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setEmergencyContactsInfo(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDialer:Z

    iput-boolean p2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mIsDefaultOnlyAvailable:Z

    return-void
.end method

.method public setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    return-void
.end method

.method public setMultiSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mIsMultiSelectionMode:Z

    return-void
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

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    return-void
.end method
