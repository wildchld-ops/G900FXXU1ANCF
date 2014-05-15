.class public Lcom/android/contacts/common/list/DefaultContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private isPhoneNumberOnly:Z

.field private mAttachPhotoMode:Z

.field private mEditMode:Z

.field private mRingtoneMode:Z

.field private mSelectedLookupKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCallButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mRingtoneMode:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mShowCallButton:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mEditMode:Z

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/contacts/util/LoaderModifier;->configureForWritableContactExcludingSim(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mRingtoneMode:Z

    invoke-virtual {v2, v0, v3}, Lcom/samsung/contacts/sim/list/ListSimManager;->excludeSimContactIfNecessary(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "link_accounts !=\'vnd.sec.contact.phone_personal\' AND link_accounts !=\'vnd.sec.contact.phone_knox\' AND link_accounts !=\'vnd.sec.contact.phone_knox2\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x6

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v2, "PeopleActivity"

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/ContactsPerformance;->getBindViewStart(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    :cond_1
    :goto_1
    if-eqz v9, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/common/list/ContactListItemView;)V

    :goto_2
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindAccountIcons(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xc

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getStarredIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_4
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindStarredIcon(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mShowCallButton:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0xb

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsVoLteEnabled:Z

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->bindCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ILandroid/net/Uri;Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsMultiSelectionMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSelectedLookupKeys:Ljava/util/Collection;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {p0, v1, v8}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/common/list/ContactListItemView;Z)V

    :goto_5
    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v2, "PeopleActivity"

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/ContactsPerformance;->getBindViewEnd(Ljava/lang/String;)V

    return-void

    :cond_6
    move-object v0, v10

    goto/16 :goto_0

    :cond_7
    int-to-long v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isEasAccountPartition(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindGalPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;->hideCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v10}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->hideCheckBox(Lcom/android/contacts/common/list/ContactListItemView;)V

    goto :goto_5
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7

    instance-of v5, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v5, :cond_3

    const-string v5, "for_export_only"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)V

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const-string v3, "sort_key"

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_7

    const-wide/16 v5, 0x1

    cmp-long v5, p2, v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isEasAccountPartition(J)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    :goto_3
    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mEditMode:Z

    if-eqz v5, :cond_2

    :cond_5
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "snippet_args"

    const-string v6, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "deferred_snippeting"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "sort_key_alt"

    goto/16 :goto_1
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, -0x6

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :cond_1
    if-eqz p4, :cond_3

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    invoke-virtual {p4, v0}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void

    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    return-void
.end method

.method public setDisplayCallButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mShowCallButton:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mEditMode:Z

    return-void
.end method

.method public setPhoneNumbersOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mRingtoneMode:Z

    return-void
.end method

.method public setSelectedLookupKeys(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mSelectedLookupKeys:Ljava/util/Collection;

    return-void
.end method
