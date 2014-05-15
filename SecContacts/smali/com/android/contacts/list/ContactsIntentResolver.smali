.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 14

    new-instance v6, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v6}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ContactsIntentResolver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Called with action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    :cond_0
    :goto_0
    const-string v10, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v6

    :cond_2
    const-string v10, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0xf

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_3
    const-string v10, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x11

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_4
    const-string v10, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x1e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_5
    const-string v10, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x28

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_6
    const-string v10, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x32

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_7
    const-string v10, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x14

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_8
    const-string v10, "android.intent.action.PICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x3c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_9
    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x3c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v10, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_b
    const-string v10, "vnd.android.cursor.dir/phone"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v10, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_d
    const-string v10, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v10, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v10, 0x69

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_f
    const-string v10, "text/x-vcard"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xfa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v10, "intent.action.INTERACTION_TAB"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "intent.action.INTERACTION_LIST"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "intent.action.INTERACTION_TOPMENU"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    invoke-virtual {p0, v0, v6, p1}, Lcom/android/contacts/list/ContactsIntentResolver;->setSubphonebookIntent(Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v10, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "alias.DialShortcut"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/16 v10, 0x78

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_13
    const-string v10, "alias.MessageShortcut"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/16 v10, 0x82

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v10, 0x6e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_15
    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vnd.android.cursor.item/contact"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/16 v10, 0x46

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_16
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_17
    const-string v10, "vnd.android.cursor.item/phone"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_18
    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_19
    const-string v10, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_1a
    const-string v10, "vnd.android.cursor.item/person"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x46

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_1b
    const-string v10, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "hidecreatelabel"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    :goto_1
    const/16 v10, 0x50

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    goto :goto_1

    :cond_1d
    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v10, "query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const-string v10, "email"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1f
    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_20
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    :cond_21
    const/16 v10, 0xf

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_23

    const-string v10, "tel"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const/16 v10, 0x1f4

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_23
    if-eqz v2, :cond_24

    invoke-static {v2}, Lcom/samsung/contacts/util/SmartClipUtils;->isListSmartClip(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/16 v10, 0xb4

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_24
    const/16 v10, 0x8c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_25
    const-string v10, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string v10, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const-string v10, "originalRequest"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactsRequest;

    if-eqz v4, :cond_26

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    :cond_26
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_27
    const-string v10, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/16 v10, 0x8c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v6, v2}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_28
    const-string v10, "com.samsung.contacts.action.FAVORITE_ADD"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    const/16 v10, 0x15e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_29
    const-string v10, "intent.action.INTERACTION_ICE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    const/16 v10, 0x122

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    :cond_2a
    const-string v10, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    const-string v10, "ContactsIntentResolver"

    const-string v11, "ACTION_GROUP_SELECT_MEMBER"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ContactsIntentResolver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EXTRA_KEY_GROUP_SEND ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "groupSend"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x1e

    const-string v11, "groupSend"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ne v10, v11, :cond_2b

    const-string v10, "ContactsIntentResolver"

    const-string v11, "ACTION_GROUP_SELECT_MEMBER EMAIL"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xa0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/16 v10, 0x1e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    const-string v10, "directSendIntent"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v10, "groupSend"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    goto/16 :goto_0

    :cond_2b
    const/16 v10, 0x1f

    const-string v11, "groupSend"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ne v10, v11, :cond_0

    const-string v10, "ContactsIntentResolver"

    const-string v11, "ACTION_GROUP_SELECT_MEMBER MESSAGE"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x96

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/16 v10, 0x1f

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    const-string v10, "directSendIntent"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v10, "groupSend"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    goto/16 :goto_0

    :cond_2c
    const-string v10, "intent.action.IMPORT_SIM_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/16 v10, 0x136

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v10, "account_name"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v10, "account_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const-string v10, "intent.action.IMPORT_SIM2_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    const/16 v10, 0x19a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v10, "account_name"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v10, "account_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    const-string v10, "intent.action.EXPORT_SIM_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    const/16 v10, 0x12c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v10, "account_name"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v10, "account_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const-string v10, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    const/16 v10, 0x190

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v10, "account_name"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v10, "account_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const-string v10, "intent.action.DELETE_SIM_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    const/16 v10, 0x15e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_31
    const-string v10, "android.intent.action.DIAL"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    :cond_32
    const/16 v10, 0x1f4

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_33
    const-string v10, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v10, 0x258

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_34
    const-string v10, "com.sec.android.contacts.action.ONE_HAND_MODE_ADD_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    const/16 v10, 0x2bc

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_35
    const-string v10, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    const/16 v10, 0x259

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_36
    const/16 v10, 0xb4

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    if-nez v0, :cond_37

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setKeepTabState(Z)V

    goto/16 :goto_0

    :cond_37
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public setSubphonebookIntent(Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0xaa

    const/16 v5, 0x96

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "email-phone-multi"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const-string v1, "directSendIntent"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v1, "groupSend"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "email-multi"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa0

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const-string v1, "directSendIntent"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v1, "groupSend"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "phone-multi"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v6}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const-string v1, "directSendIntent"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v1, "groupSend"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    goto :goto_0

    :cond_3
    const-string v1, "email-phone"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const/16 v1, 0x16

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto :goto_0

    :cond_4
    const-string v1, "phone"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2, v6}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const-string v1, "query"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "query"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_5
    const-string v1, "phone"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "phone"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    const-string v1, "email"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "email"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :cond_7
    const-string v1, "query"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "phone"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "email"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {p2, v0}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "namecard"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const/16 v1, 0x17

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "vcard-multi"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xf0

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "vip-email"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x118

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v1, "maxRecipientCount"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_d

    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto/16 :goto_0

    :cond_d
    move v1, v3

    goto :goto_1

    :cond_e
    const-string v1, "settings-phone-multi"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xbe

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "pick-multi-emergency-message"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x126

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v1, "intent.action.EXPORT_TO_INTERNEL_SDCARD"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x12d

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_11
    const-string v1, "intent.action.EXPORT_TO_EXTERNEL_SDCARD"

    const-string v4, "additional"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x12e

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xb4

    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    if-nez p1, :cond_13

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setKeepTabState(Z)V

    goto/16 :goto_0

    :cond_13
    move v2, v3

    goto :goto_2
.end method
