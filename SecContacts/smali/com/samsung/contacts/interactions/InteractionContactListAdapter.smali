.class public Lcom/samsung/contacts/interactions/InteractionContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "InteractionContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mActionCode:I

.field private mGroupFilter:Z

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 9

    const/16 v8, 0x118

    const/16 v7, 0xbe

    const/16 v6, 0xaa

    const/16 v5, 0xa0

    const/16 v4, 0x96

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

    :cond_2
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    instance-of v2, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setSelectionForProfile(Ljava/lang/String;)V

    check-cast p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setSelectionArgsForProfile([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_6

    :cond_5
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v6, :cond_7

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_8

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sec_custom_dormant_contact==0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_9

    const-string v2, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0x126

    if-ne v2, v3, :cond_2

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id not in (Select contact_id from emergency, view_data where default_emergency=3 and phone_data_id is not null and view_data._id=phone_data_id)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "starred==1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_a

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_b

    :cond_a
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v6, :cond_c

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_d

    :cond_c
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_5
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_f

    :cond_e
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v6, :cond_10

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_11

    :cond_10
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_11
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_6
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_phone_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_7
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_8
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "has_email>0 and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_9
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_phone_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "(has_email>0 or has_phone_number>0) and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isSelectedItem(ILandroid/database/Cursor;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/ContactListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    check-cast v2, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p4, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/common/list/ContactListItemView;)V

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isSelectionVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isMultiSelectEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isSelectedItem(ILandroid/database/Cursor;)Z

    move-result v1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->hideCheckBox(Lcom/android/contacts/common/list/ContactListItemView;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    int-to-long v5, p2

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isEasAccountPartition(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->bindGalPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->bindCheckBox(Lcom/android/contacts/common/list/ContactListItemView;Z)V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    const-string v4, "InteractionContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v4, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const-string v3, "sort_key"

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_2
    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0xfa

    if-ne v4, v5, :cond_4

    :cond_3
    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "sort_key_alt"

    goto/16 :goto_1
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mGroupFilter:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz p4, :cond_3

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v2, :cond_2

    const-string v2, "account_name"

    iget-object v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "account_type"

    iget-object v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_3
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "for_export_only"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mActionCode:I

    return-void
.end method

.method public setSelctedContactHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void
.end method
