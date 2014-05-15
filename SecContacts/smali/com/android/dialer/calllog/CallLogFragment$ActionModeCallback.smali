.class public Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 14

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const-string v0, "CallLogFragment"

    const-string v1, "onActionItemClicked : menu_delete"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    if-ne v10, v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x1

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1500(Lcom/android/dialer/calllog/CallLogFragment;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x2

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1500(Lcom/android/dialer/calllog/CallLogFragment;I)V

    goto :goto_0

    :pswitch_2
    const-wide/16 v6, -0x1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLTNCallerIDMatch()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v9

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareActionMode mMatchLen :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   nLen :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v8

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareActionMode: mIsSpecialNum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-le v11, v9, :cond_4

    if-nez v8, :cond_4

    const-string v0, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :goto_1
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/samsung/dialer/util/CallLogUtil;->viewContact(Landroid/content/Context;J)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->addToContact(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2300(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/util/CallLogUtil;->isCheckedBefore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/samsung/dialer/util/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/util/ArrayList;)Z

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "NUMBER"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-static {v2, v0, v3}, Lcom/samsung/dialer/util/CallLogUtil;->showDialog(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ActionMode;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/samsung/dialer/util/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->showDeleteHistoryLogsConfirmDlg()V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getInstance()Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "NUMBER"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080304
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "CallLogFragment"

    const-string v2, "onCreateActionMode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->showSelectAllHeader(Z)V
    invoke-static {v1, v5}, Lcom/android/dialer/calllog/CallLogFragment;->access$1200(Lcom/android/dialer/calllog/CallLogFragment;Z)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1300(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1300(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onCreateActionMode()V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1400(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x2

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$1500(Lcom/android/dialer/calllog/CallLogFragment;I)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z
    invoke-static {v1, v6}, Lcom/android/dialer/calllog/CallLogFragment;->access$1402(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    :cond_1
    sput-object p1, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1600(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "NUMBER"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-static {v3, v1, v4}, Lcom/samsung/dialer/util/CallLogUtil;->showDialog(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ActionMode;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z
    invoke-static {v1, v6}, Lcom/android/dialer/calllog/CallLogFragment;->access$1602(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    :cond_2
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateActionMode mMultiSelectEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$1800(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v1, v5}, Lcom/android/dialer/calllog/CallLogFragment;->access$1802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyActionMode mMultiSelectEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$1800(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    invoke-virtual {p0, v3, p1}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1300(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1300(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onDestroyActionMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->showSelectAllHeader(Z)V
    invoke-static {v0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$1200(Lcom/android/dialer/calllog/CallLogFragment;Z)V

    sput-object v4, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    sput-object v4, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$1802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z
    invoke-static {v0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$2002(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mLimitedItemId:J
    invoke-static {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$2202(Lcom/android/dialer/calllog/CallLogFragment;J)J

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->fetchLogs()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 19

    const-string v1, "CallLogFragment"

    const-string v2, "onPrepareActionMode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v9, 0x1

    :goto_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->getSelectedItemInfo(I)V
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$1900(Lcom/android/dialer/calllog/CallLogFragment;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2000(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030e

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080308

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080307

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030a

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080304

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v1, 0x7f0e0163

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    const/4 v1, 0x1

    :goto_3
    return v1

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :cond_5
    new-instance v14, Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v1, 0x7f080304

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    if-eqz v9, :cond_e

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLTNCallerIDMatch()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareActionMode mMatchLen :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   nLen :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v11

    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareActionMode: mIsSpecialNum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-le v15, v13, :cond_c

    if-nez v11, :cond_c

    const-string v1, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :goto_4
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v8, 0x1

    :cond_7
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "NUMBER"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/samsung/dialer/util/CallLogUtil;->isBlockedNumbers(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/samsung/dialer/util/CallLogUtil;->isUnBlockedNumbers(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v12

    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    if-eqz v8, :cond_f

    const v1, 0x7f080308

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080307

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    const v1, 0x7f080304

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030a

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080309

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBlockCallMsg()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030e

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_7
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030e

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_9

    const v1, 0x7f080310

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080311

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMenuDeleteHistory()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f08030f

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    const-string v1, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/dialer/util/CallLogUtil;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030e

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030a

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080310

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080311

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080309

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f08030f

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/dialer/calllog/LogsDBProvider;->PHOTE_LOOKUP_WITH_PROFILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_4

    :cond_e
    const v1, 0x7f080313

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080314

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_f
    const v1, 0x7f080308

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080307

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_10
    const v1, 0x7f08030e

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7
.end method

.method public selectAll()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method

.method public setActionContextBarVisibility(ZLandroid/view/ActionMode;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10203b8

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    const v1, 0x7f020271

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    :cond_4
    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public toggleSelection(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleSelection invalid position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GroupSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelection - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GroupSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    :cond_3
    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :cond_4
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSelection - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "CallLogFragment"

    const-string v5, "updateSelectionMenu"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v4, v4, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e027b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->mSelectedTextView:Landroid/widget/TextView;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v6}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_1

    :goto_0
    #calls: Lcom/android/dialer/calllog/CallLogFragment;->updateSelectAllState(Z)V
    invoke-static {v4, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$1100(Lcom/android/dialer/calllog/CallLogFragment;Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method
