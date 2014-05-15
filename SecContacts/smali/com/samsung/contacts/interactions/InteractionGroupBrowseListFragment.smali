.class public Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;
.super Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/contacts/group/GroupCommonBrowseListFragment",
        "<",
        "Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCallingPackage:Ljava/lang/String;

.field private mCurrentCount:I

.field private mIsRecreatedInstance:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createListAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->createListAdapter()Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;
    .locals 3

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    invoke-virtual {v0, p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;->setOnGroupSectionActionListener(Lcom/android/contacts/group/GroupBrowseListAdapter$onGroupSectionActionListener;)V

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mIsRecreatedInstance:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;->setRecreatedInstance(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;->setCalllingPackage(Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_1

    const-string v0, "InteractionGroupBrowseListFragment"

    const-string v1, "[Interaction]onActivityResult setResult"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Lcom/samsung/contacts/group/GroupInfo;

    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/samsung/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.android.nttdocomo"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KDDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.kddi.ast.auoneid"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const-string v3, "com.samsung.contacts.action.SHOW_SUB_GROUPS"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "InteractionMode"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/contacts/util/GroupUtils;->parseGroupType(Lcom/samsung/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v12

    const-string v3, "GroupInfo"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "actionCode"

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "maxRecipientCount"

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "existingRecipientCount"

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "SelectMode"

    invoke-virtual {v13, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "FromMMS"

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v3

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_4

    :cond_3
    const-string v3, "directSendIntent"

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v4

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "groupSend"

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "requestCode"

    const/4 v4, 0x2

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x2

    invoke-virtual {p0, v13, v3}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v3, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const-string v3, "requestCode"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v13, v3}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mIsRecreatedInstance:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "interaction_expanded_sections"

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->KEY_EXPANDED_SECTIONS:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    if-eqz p3, :cond_1

    const-string v0, "groupInfo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getAdapter()Lcom/android/contacts/group/GroupBrowseListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;->setSelectedGroup(Lcom/samsung/contacts/group/GroupInfo;)V

    :cond_0
    const-string v0, "request"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 12

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    if-nez v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "Not Assigned"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/samsung/contacts/group/GroupInfo;

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/contacts/util/GroupUtils;->parseGroupType(Lcom/samsung/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v10

    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GroupInfo"

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "actionCode"

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mActionCode:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "maxRecipientCount"

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mLimitedCount:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "existingRecipientCount"

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mCurrentCount:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SelectMode"

    invoke-virtual {v11, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FromMMS"

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mIsSendingMSG:Z

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "directSendIntent"

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "groupSend"

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getGroupSendType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getDirectSendIntentMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-virtual {p0, v11, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v11, v1}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "groupInfo"

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->mSelectedGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/samsung/contacts/group/GroupCommonBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-void
.end method

.method public setMMSinformation(III)V
    .locals 3

    const-string v0, "InteractionGroupBrowseListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupActivity set action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mActionCode:I

    iput p2, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mLimitedCount:I

    iput p3, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->mCurrentCount:I

    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
