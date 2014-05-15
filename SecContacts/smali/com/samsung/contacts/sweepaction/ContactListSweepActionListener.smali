.class public Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;
.super Ljava/lang/Object;
.source "ContactListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactListAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field final SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

.field private isSuperPrimaryEmail:Z

.field private isSuperPrimaryPhone:Z

.field private mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactId:I

.field private mContext:Landroid/content/Context;

.field private mEmailAddress:Ljava/lang/String;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSimCardToCall:I

.field private mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;Lcom/android/contacts/common/list/ContactListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView;",
            "Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data15"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object p3, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    iput-object p4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 0

    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 9

    const/4 v7, 0x1

    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {v4}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v4}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const v5, 0x7f0e0402

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSimCardToCall:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/contacts/sim/list/ListSimManager;->getCallIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "call_from_sec"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableAssistDialing()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "origin"

    const-string v5, "from_contact"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {v4}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {v4}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->getHasEmailAddress()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    :cond_7
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ","

    const-string v7, "P"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const-string v8, "W"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "com.android.mms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    iget v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    const-string v6, "P"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v7, "W"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "sendto"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_9
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    if-eqz v4, :cond_b

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public onSweepActionStarted(I)V
    .locals 19

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSimCardToCall:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v18, p1, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    instance-of v1, v1, Lcom/samsung/contacts/list/EmergencyContactListAdapter;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    check-cast v11, Lcom/samsung/contacts/list/EmergencyContactListAdapter;

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->isEmergencyContact(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "content://com.android.contacts/emergency/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;->getEmergencyContactId(I)J

    move-result-wide v14

    const-wide/16 v7, -0x1

    cmp-long v1, v14, v7

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "number"

    aput-object v5, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    instance-of v1, v1, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v12, p1, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    check-cast v1, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v1, v12}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isDefaultIce(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, v12}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/common/list/ContactListAdapter;

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v1, "entities"

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    if-eqz v13, :cond_18

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, -0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->move(I)Z

    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_a
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-lez v17, :cond_9

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    :cond_b
    const-string v1, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    const/4 v1, 0x5

    invoke-interface {v13, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x5

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSimCardToCall:I

    :cond_c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_f
    const-string v1, "vnd.android.cursor.item/phone_v2"

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    :cond_10
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-nez v1, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_11
    const-string v1, "vnd.android.cursor.item/email_v2"

    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mContactId:I

    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v5, "CscFeature_Message_DisableMMS"

    invoke-virtual {v1, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    :cond_13
    :goto_4
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_14
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1

    :cond_15
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_4
.end method

.method public setImsLowSignalHelper(Lcom/samsung/contacts/util/ImsLowSignalHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    return-void
.end method
