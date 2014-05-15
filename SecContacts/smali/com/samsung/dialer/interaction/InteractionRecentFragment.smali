.class public Lcom/samsung/dialer/interaction/InteractionRecentFragment;
.super Lcom/samsung/dialer/widget/CallLogListFragment;
.source "InteractionRecentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;
    }
.end annotation


# static fields
.field private static mBundle:Landroid/os/Bundle;

.field public static mItemPosition:I

.field public static mItemPositionY:I

.field private static mRequest:I


# instance fields
.field final CHECKED_ITEM_LIST_FOR_TALKBACK:Ljava/lang/String;

.field final ITEM_ARRAY:Ljava/lang/String;

.field final ITEM_COUNT:Ljava/lang/String;

.field final ITEM_POPUP:Ljava/lang/String;

.field final ITEM_REQUEST:Ljava/lang/String;

.field final ITEM_SEND_MSG:Ljava/lang/String;

.field final SAVED_ITEM_LIST:Ljava/lang/String;

.field final SELECTED_LOG_COUNT:Ljava/lang/String;

.field public SELECT_MAX_COUNT:I

.field public SelectedLogCount:I

.field final VIEW_BY:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkedItemListTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

.field private empty_layout:Landroid/widget/LinearLayout;

.field public isSelectOneItem:Z

.field private isUsingTwoPanel:Z

.field public mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field mCallHandler:Landroid/os/Handler;

.field private mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCalllogEmptyContainer:Landroid/widget/FrameLayout;

.field private mCalllogEmptyView:Landroid/view/View;

.field public mCheckBoxStates:Landroid/util/SparseBooleanArray;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDirectSendIntentMode:Z

.field private mEasyMode:Z

.field private mFirstID:I

.field private mFragmentView:Landroid/view/View;

.field private mFromEmail:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsSendingMSG:Z

.field private mItemCursor:Landroid/database/Cursor;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

.field private mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

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

.field private mTotalCount:I

.field private mUpdateCursor:Landroid/database/Cursor;

.field private mViewGroup:Landroid/view/ViewGroup;

.field private savedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private savedItemListForTalkback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemPosition:I

    sput v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemPositionY:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemListTop:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    iput-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFromEmail:Z

    iput-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mEasyMode:Z

    iput-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mIsSendingMSG:Z

    iput v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iput-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isSelectOneItem:Z

    iput v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    const-string v0, "view_by"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    const-string v0, "item_count"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    const-string v0, "item_array"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    const-string v0, "itme_request"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->ITEM_REQUEST:Ljava/lang/String;

    const-string v0, "itme_popup"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->ITEM_POPUP:Ljava/lang/String;

    const-string v0, "msg_dialog"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->ITEM_SEND_MSG:Ljava/lang/String;

    const-string v0, "saved_item_list"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SAVED_ITEM_LIST:Ljava/lang/String;

    const-string v0, "selected_log_count"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECTED_LOG_COUNT:Ljava/lang/String;

    const-string v0, "checked_item_list_for_talkback"

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->CHECKED_ITEM_LIST_FOR_TALKBACK:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mDirectSendIntentMode:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment$1;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRefreshHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    return v0
.end method

.method private addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 3

    const v0, 0x7f030107

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    new-instance v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment$5;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshData()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "InteractionRecentFragment"

    const-string v5, "refreshData"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    const-string v2, "InteractionRecentFragment"

    const-string v5, "refreshData, change cursor"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v5}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    const-string v2, "InteractionRecentFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume, mTotalCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0800b6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030097

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    const v5, 0x7f0801d8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e02c4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    const v5, 0x7f0801d5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    sget-object v2, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v2, v2, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateAllCheckState()V

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCalllogEmptyView:Landroid/view/View;

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateAllCheckState()V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v2, v2, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    invoke-interface {v2, v5, v6}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v2, :cond_c

    move v2, v3

    :goto_3
    invoke-interface {v5, v2}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_a
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    invoke-interface {v2, v5, v6}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionSelectionChanged(II)V

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v5, :cond_d

    :goto_4
    invoke-interface {v2, v3}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_b
    return-void

    :cond_c
    move v2, v4

    goto :goto_3

    :cond_d
    move v3, v4

    goto :goto_4
.end method

.method private saveFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method private setDoneButton(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-lez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-lez p1, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private setObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->co:Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->co:Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0202b1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v0, 0x7f0a0019

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private updateAllCheckState()V
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFooterViewsCount()I

    move-result v9

    sub-int v2, v8, v9

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v5

    :goto_0
    if-gt v5, v2, :cond_2

    or-int v8, v4, v3

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setDoneButton(I)V

    return-void
.end method


# virtual methods
.method public checkUpdateAllCheckState()Z
    .locals 8

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFooterViewsCount()I

    move-result v7

    sub-int v2, v6, v7

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    :goto_0
    if-gt v3, v2, :cond_1

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public clearFocusAll()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    iput v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    :goto_0
    if-gt v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemListTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fetchLogs()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v0, "InteractionRecentFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "InteractionRecentFragment"

    const-string v1, "fetchLogs in resumed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-1"

    const-string v1, "-2"

    const-string v1, "-3"

    const-string v1, "-4"

    const-string v1, "P"

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=-2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=-3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=-4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=\'P\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/dialer/impl/CallLogQueryImpl;->_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFirstID:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    :cond_1
    const-string v0, "InteractionRecentFragment"

    const-string v1, "log count is same, maybe contact\'s changed, refresh logs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->refreshData()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mUpdateCursor:Landroid/database/Cursor;

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public getContactsRequest()I
    .locals 1

    sget v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRequest:I

    return v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sput-object p1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFromEmail:Z

    new-instance v2, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "OPTION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isSelectOneItem:Z

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isUsingTwoPanel:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f03001e

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFragmentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFragmentView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const-string v2, "InteractionRecentFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView, value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getContactsRequest()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->saveFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-boolean v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isSelectOneItem:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setChoiceMode(I)V

    invoke-direct {p0, p1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V

    invoke-direct {p0, v5}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->showSelectAllHeader(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFragmentView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->stopRequestProcessing()V

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    :cond_2
    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v1, "InteractionRecentFragment"

    const-string v2, "onPause, value :"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->co:Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->co:Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->co:Lcom/samsung/dialer/interaction/InteractionRecentFragment$CallObserver;

    :cond_0
    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onPause()V

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v1

    sput v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemPosition:I

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sput v1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemPositionY:I

    :cond_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mIsSendingMSG:Z

    const-string v0, "saved_item_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemList:Ljava/util/ArrayList;

    const-string v0, "selected_log_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    const-string v0, "checked_item_list_for_talkback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "itme_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setContactsRequest(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 18

    const-string v1, "InteractionRecentFragment"

    const-string v2, "onResume, value :"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setObserver()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v1, "easy-mode"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mEasyMode:Z

    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "-1"

    const-string v9, "-2"

    const-string v8, "-3"

    const-string v11, "-4"

    const-string v7, "P"

    const-string v1, "number"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!=-1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=-2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=-3"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=-4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND number!=\'P\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reject_flag"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/dialer/impl/CallLogQueryImpl;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v12}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v0, v3, v15}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mFirstID:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "InteractionRecentFragment"

    const-string v2, "onResume, refreshData"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->refreshData()V

    :goto_1
    invoke-super/range {p0 .. p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onResume()V

    const-string v1, "InteractionRecentFragment"

    const-string v2, "onResume, END"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mEasyMode:Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "InteractionRecentFragment"

    const-string v2, "onResume, refreshData in 500"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    const/16 v1, 0x64

    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRefreshHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "itme_request"

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getContactsRequest()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "saved_item_list"

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selected_log_count"

    iget v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "checked_item_list_for_talkback"

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sput-object p1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public selectedlog(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f08007e

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "InteractionRecentFragment"

    const-string v3, "========= selected =========1"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "InteractionRecentFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickhandler"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    iget-boolean v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->isSelectOneItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v5, "number"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "NUMBER"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionSelectionChanged(II)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v3, :cond_6

    :goto_3
    invoke-interface {v0, v1}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_2
    :goto_4
    return-void

    :catch_0
    move-exception v0

    const-string v0, "InteractionRecentFragment"

    const-string v1, "NullPointerException in selectedlog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-ge v0, v4, :cond_c

    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :goto_5
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-interface {v3, v0}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget-object v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionSelectionChanged(II)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v3, :cond_b

    :goto_7
    invoke-interface {v0, v1}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionDoneButtonStateUpdated(Z)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v1, v2

    goto :goto_7

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0019

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01b9

    new-instance v2, Lcom/samsung/dialer/interaction/InteractionRecentFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment$4;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4
.end method

.method public sendNum()V
    .locals 12

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFooterViewsCount()I

    move-result v0

    const-string v8, "InteractionRecentFragment"

    const-string v9, "sendNum"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    :goto_0
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v1

    sub-int/2addr v8, v0

    if-gt v2, v8, :cond_4

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v8, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    sub-int v9, v2, v1

    invoke-virtual {v8, v9}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    iput-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v10, "number"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    const-string v8, "-1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "-2"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "-3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/android/dialer/PhoneCallDetailsHelper;->NETWORK_RESTRICTED_NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mDirectSendIntentMode:Z

    if-eqz v8, :cond_3

    const-string v8, "InteractionRecentFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendNum, value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getContactsRequest()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "5583;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemListTop:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemListTop:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v8, "result"

    iget-object v9, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-boolean v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mEasyMode:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    invoke-interface {v8, v4}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onRecentListAction(Landroid/content/Intent;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v8, v4}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onRecentListAction(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mDirectSendIntentMode:Z

    if-eqz v8, :cond_6

    const-string v8, "InteractionRecentFragment"

    const-string v9, "sendNum, mListener.onPickDataAction"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v9, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v8, v9}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onMultiInfoSelectionAction(Ljava/util/HashMap;)V

    goto :goto_3
.end method

.method public setAllItemChecked(Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFooterViewsCount()I

    move-result v6

    sub-int v0, v3, v6

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-le v0, v3, :cond_6

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    sub-int v2, v3, v6

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    :goto_0
    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-le v0, v3, :cond_9

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    :goto_1
    if-gt v1, v0, :cond_0

    if-nez v2, :cond_7

    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    invoke-interface {v3, v6, v0}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v3, :cond_c

    move v3, v4

    :goto_3
    invoke-interface {v6, v3}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    invoke-interface {v3, v6, v0}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionSelectionChanged(II)V

    iget-object v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v3, :cond_d

    move v3, v4

    :goto_4
    invoke-interface {v6, v3}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_2
    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget v6, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-lt v3, v6, :cond_3

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e0019

    invoke-virtual {p0, v6}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e01b9

    new-instance v5, Lcom/samsung/dialer/interaction/InteractionRecentFragment$3;

    invoke-direct {v5, p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment$3;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_3
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v3}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onAllDataDeleted()V

    :cond_4
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    invoke-interface {v3}, Lcom/samsung/dialer/interaction/OnRecentListListener;->onAllDataDeleted()V

    :cond_5
    return-void

    :cond_6
    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    sub-int v2, v0, v3

    iget v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, -0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    :goto_5
    if-gt v1, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, -0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->clearFocusAll()V

    goto/16 :goto_2

    :cond_c
    move v3, v5

    goto/16 :goto_3

    :cond_d
    move v3, v5

    goto/16 :goto_4
.end method

.method public setContactsRequest(I)V
    .locals 0

    sput p1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRequest:I

    return-void
.end method

.method public setCurrentCallLogInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTabState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    iget v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mTotalCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SelectedLogCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectSendIntentMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mDirectSendIntentMode:Z

    return-void
.end method

.method public setMMSinformation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    return-void
.end method

.method public setOnRecentListListener(Lcom/samsung/dialer/interaction/OnRecentListListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mRecentListener:Lcom/samsung/dialer/interaction/OnRecentListListener;

    return-void
.end method

.method public updateSelectAllState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
