.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerBezelListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/samsung/android/bezelinteraction/BezelEvent;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v19

    if-eqz v19, :cond_11

    const/4 v6, 0x0

    new-instance v3, Lcom/android/contacts/common/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$8000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/list/ContactListAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$8100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/list/ContactListAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v7, v14}, Lcom/android/contacts/ContactsUtils;->getSharableOnly(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    :cond_4
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v19

    if-gtz v19, :cond_6

    :cond_5
    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_a

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v19, "profile"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$8200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/16 v19, 0xfa

    move/from16 v0, v19

    if-le v6, v0, :cond_7

    :cond_8
    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v19, "profile"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/4 v5, 0x1

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$8300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/16 v19, 0xbb8

    move/from16 v0, v19

    if-le v6, v0, :cond_b

    :cond_c
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_d

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_e

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v5, :cond_f

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
