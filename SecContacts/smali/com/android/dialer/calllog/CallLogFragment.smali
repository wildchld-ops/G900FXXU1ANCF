.class public Lcom/android/dialer/calllog/CallLogFragment;
.super Lcom/samsung/dialer/widget/CallLogListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;,
        Lcom/android/dialer/calllog/CallLogFragment$PerformScan;,
        Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;,
        Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
    }
.end annotation


# static fields
.field public static keyPressed:Z

.field public static mActionMode:Landroid/view/ActionMode;

.field public static mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

.field public static mEnableTouchScreenHeight:D

.field public static mWidth:D


# instance fields
.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private empty_layout:Landroid/widget/LinearLayout;

.field public groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field

.field private isActionModeRotation:Z

.field private isEmptyViewShown:Z

.field private isOnCallsFetchedCalled:Z

.field private mActivity:Lcom/android/contacts/activities/PeopleActivity;

.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field public mAddToRejectListDialog:Landroid/app/AlertDialog;

.field private mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

.field private mCallLogFetched:Z

.field public mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallTypeFilter:I

.field private mCalllogEmptyContainer:Landroid/widget/FrameLayout;

.field private mCalllogEmptyPopup:Landroid/app/AlertDialog;

.field private mCalllogEmptyView:Landroid/view/View;

.field public mCheckBoxStates:Landroid/util/SparseBooleanArray;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mDeleteConfirmDlg:Landroid/app/AlertDialog;

.field public mDeleteLogDlg:Landroid/app/AlertDialog;

.field private mDeleteOnlyMode:Z

.field private mDeleteOp:I

.field private mEmptyLoaderRunning:Z

.field private mFragmentView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field private mIsDeleteDlgShowing:Z

.field private mIsRejectDlgShowing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLimitedItemId:J

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMenuVisible:Z

.field private mMultiSelectEnabled:Z

.field private mRefreshHandler:Landroid/os/Handler;

.field private mResetMissedCheck:Z

.field private mSavedInstance:Landroid/os/Bundle;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mScrollState:I

.field public mScrollToTop:Z

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field public mSelectedGroupIds:Landroid/util/SparseIntArray;

.field private mSelectedItemsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedName:Ljava/lang/String;

.field private mSelectedNumber:Ljava/lang/String;

.field private mShowDelProgressDlg:Z

.field private mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

.field private misScoverFeatureEnabled:Z

.field private preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

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

.field private unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dialer/calllog/CallLogFragment;->keyPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionEnabled:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLimitedItemId:J

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->misScoverFeatureEnabled:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->isOnCallsFetchedCalled:Z

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyPopup:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->isActionModeRotation:Z

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSavedInstance:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOp:I

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/contacts/activities/PeopleActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateSweepActionFeasibility()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/calllog/CallLogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->updateSelectAllState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/calllog/CallLogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->showSelectAllHeader(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/dialer/calllog/CallLogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/dialer/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/dialer/calllog/CallLogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectedItemInfo(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/dialer/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/dialer/calllog/CallLogFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLimitedItemId:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/dialer/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/dialer/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mShowDelProgressDlg:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment$PerformScan;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/calllog/CallLogFragment$PerformScan;)Lcom/android/dialer/calllog/CallLogFragment$PerformScan;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/dialer/calllog/CallLogFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->setSwipePopupPref()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/dialer/calllog/CallLogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;)Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    return-object p1
.end method

.method private addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 3

    const v0, 0x7f030107

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$11;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/CallLogFragment$11;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private cleanupResouces()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    return-void
.end method

.method private fillUpCallLog(Ljava/io/File;II)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " doesn\'t exist"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v12, Lcom/samsung/dialer/calllog/DataReader;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/samsung/dialer/calllog/DataReader;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    const/16 v18, 0x1

    const-string v8, "\t"

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Incoming Call"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "Outgoing Call"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "Missed Call"

    aput-object v2, v7, v1

    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillUpCallLog - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v7, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v15, v0, :cond_1

    :try_start_0
    invoke-virtual {v12}, Lcom/samsung/dialer/calllog/DataReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    if-nez v16, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {v12}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-int/lit8 v1, v17, 0x1

    new-array v0, v1, [J

    move-object/from16 v20, v0

    move/from16 v15, v17

    :goto_2
    if-ltz v15, :cond_3

    aput-wide v9, v20, v15

    const/16 v1, 0x258

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    mul-int/lit16 v1, v13, 0x3e8

    int-to-long v1, v1

    sub-long/2addr v9, v1

    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :catch_0
    move-exception v14

    goto :goto_1

    :cond_3
    new-instance v12, Lcom/samsung/dialer/calllog/DataReader;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/samsung/dialer/calllog/DataReader;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v15, v0, :cond_4

    :try_start_1
    invoke-virtual {v12}, Lcom/samsung/dialer/calllog/DataReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    if-nez v16, :cond_5

    :cond_4
    :goto_4
    invoke-virtual {v12}, Lcom/samsung/dialer/calllog/DataReader;->close()V

    if-eqz v18, :cond_9

    const-string v1, "CallLogFragment"

    const-string v2, "Call Log Fill Up is done"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_5
    :try_start_2
    const-string v1, "\t"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    array-length v1, v11

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    add-int/lit8 v1, v15, 0x1

    aget-wide v1, v20, v1

    aget-wide v5, v20, v15

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-int v13, v1

    const/4 v4, 0x0

    if-lez v13, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    :cond_6
    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8

    const/4 v1, 0x3

    if-gt v3, v1, :cond_8

    const/4 v1, 0x3

    if-ne v3, v1, :cond_7

    const/4 v4, 0x0

    :cond_7
    const/4 v1, 0x1

    aget-object v2, v11, v1

    aget-wide v5, v20, v15

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/dialer/calllog/CallLogFragment;->callLoginsert(Ljava/lang/String;IIJ)V

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v18, 0x0

    goto :goto_4

    :cond_9
    const-string v1, "CallLogFragment"

    const-string v2, "Call Log Fill Up failed. CallLog file does not exist"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private getSelectedItemInfo(I)V
    .locals 6

    const/4 v2, 0x0

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v1, "NUMBER"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v1, "NAME"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v1, "NUMBER"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private getSwipePopupPref()Z
    .locals 3

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "need_swipe_help_popup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hideCurrentFilterMenuOption(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :pswitch_1
    const v0, 0x7f080315

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080319

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080318

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f080317

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v1, 0x7f080316

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->nullViewDrawable(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 2

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CallLogFragment"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CallLogFragment"

    const-string v1, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method private setSwipePopupPref()V
    .locals 4

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "need_swipe_help_popup"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showDeleteConfirmDlg(I)V
    .locals 8

    const v7, 0x7f0e02fe

    const v6, 0x7f0e02fc

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDeleteConfirmDlg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ne p1, v4, :cond_1

    const v1, 0x7f0e0301

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ge v0, v5, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01b9

    new-instance v2, Lcom/android/dialer/calllog/CallLogFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/calllog/CallLogFragment$7;-><init>(Lcom/android/dialer/calllog/CallLogFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0318

    new-instance v2, Lcom/android/dialer/calllog/CallLogFragment$6;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogFragment$6;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v7, v2}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ge v0, v5, :cond_2

    const v0, 0x7f0e02ff

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0e0300

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v7, v2}, Lcom/android/dialer/calllog/CallLogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showProgress()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e037c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$10;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/CallLogFragment$10;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0201c8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v0, 0x7f0a0019

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    return-void
.end method

.method private updateOnEntry(Z)V
    .locals 2

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogFragment$UpdateOnEntry;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Z)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateOnExit()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(ZZ)V

    return-void
.end method

.method private updateOnTransition(ZZ)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean p2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOnTransition misScoverFeatureEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->misScoverFeatureEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resetMissed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->misScoverFeatureEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-ne v2, v0, :cond_4

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateCoverNotification()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/calllog/CallLogFragment$1;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private updateSelectAllState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateSweepActionFeasibility()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CallLogFragment"

    const-string v1, "updateSweepActionFeasibility"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isSweepActionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    :cond_3
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSweepActionFeasibility, mSweepActionBarCallBack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSweepActionFeasibility, mSweepActionListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    goto :goto_0
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public callLoginsert(Ljava/lang/String;IIJ)V
    .locals 4

    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert - number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/addcall"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    const-string v0, "CallLogFragment"

    const-string v1, "configureSweepActionCallbackAndListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->setSweepActionBarCallBack(Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;)V

    new-instance v0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getSweepActionBarCallBack()Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;Lcom/android/dialer/calllog/CallLogAdapter;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method public fetchLogs()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const-string v0, "CallLogFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->getWhichButton()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry(Z)V

    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public getSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    return v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    return-object v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/activities/PeopleActivity;

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    :cond_0
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "CallLogFragment"

    const-string v3, "========= onCallsFetched ========="

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v3, "<GATE-M>NO_CALL_LOGS</GATE-M>"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/ViewByImpl;->getWhichButton()I

    move-result v0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v3}, Lcom/samsung/dialer/impl/ViewByImpl;->getDefaultViewby()I

    move-result v3

    if-eq v0, v3, :cond_1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v3, 0x7f0800b6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030097

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    const v3, 0x7f0801d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0e02c4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    if-nez v0, :cond_2

    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getOpStyleVariation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f03001d

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "enable_sweep_actions"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const v0, 0x7f0800b5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0e01b9

    new-instance v5, Lcom/android/dialer/calllog/CallLogFragment$3;

    invoke-direct {v5, p0}, Lcom/android/dialer/calllog/CallLogFragment$3;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyPopup:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getSwipePopupPref()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getCurrentTab()I

    move-result v0

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "enable_sweep_actions"

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    const v3, 0x7f0801d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    const-string v0, "CallLogFragment"

    const-string v1, "========= onCallsFetched return========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyView:Landroid/view/View;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->sendEmptyMessage(I)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    :cond_9
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "CallLogFragment"

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/ContactsPerformance;->getDBQueryEnd(Ljava/lang/String;)V

    const-string v0, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallsFetched mMultiSelectEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isOnCallsFetchedCalled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->isOnCallsFetchedCalled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->isOnCallsFetchedCalled:Z

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->isOnCallsFetchedCalled:Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSavedInstance:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getCurrentTab()I

    move-result v0

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v3, :cond_6

    const-string v0, "CallLogFragment"

    const-string v3, "onCallsFetched startActionMode"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateSelectAllState(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectedItemInfo(I)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    :cond_a
    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const-string v6, "CallLogFragment"

    const-string v7, "========= onCreate start ========="

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PAP"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "calllog_import"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_5

    :try_start_0
    const-string v6, "CallLogFragment"

    const-string v7, "insert Call logs for LDU"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "calllog_import"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/io/File;

    const-string v6, "/storage/sdcard0/LiveDemo/calllog.txt"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-direct {p0, v0, v6, v7}, Lcom/android/dialer/calllog/CallLogFragment;->fillUpCallLog(Ljava/io/File;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v6, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v8, "CallLogFragment"

    invoke-virtual {v6, v7, v9, v8}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    sget-object v6, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v7, "CallLogFragment"

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v6, v3, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v6, :cond_1

    check-cast v3, Lcom/android/contacts/activities/PeopleActivity;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    :cond_1
    new-instance v6, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p0, v8}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    sget-object v6, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v7, "CallLogFragment"

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateEnd(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v6, 0x64

    iput v6, v4, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2bc

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v6, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v6}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_1
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/cover/Scover;->isFeatureEnabled(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->misScoverFeatureEnabled:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->misScoverFeatureEnabled:Z

    if-eqz v6, :cond_3

    const-string v6, "CallLogFragment"

    const-string v7, "Scover Feature is enabled"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v6, Lcom/android/dialer/calllog/CallLogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/dialer/calllog/CallLogFragment$2;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v6, :cond_2

    const-string v6, "CallLogFragment"

    const-string v7, "mCoverManager is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-nez v6, :cond_3

    const-string v6, "CallLogFragment"

    const-string v7, "mCoverStateListener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSavedInstance:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->restoreSavedState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/contacts/util/ImsLowSignalHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    :cond_4
    const-string v6, "CallLogFragment"

    const-string v7, "========= onCreate end ========="

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :try_start_2
    const-string v6, "CallLogFragment"

    const-string v7, "Need Not Import..."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v6, "CallLogFragment"

    const-string v7, "exception to insert logs"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v6, "CallLogFragment"

    const-string v7, "IllegalArgumentException!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v6, "CallLogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SsdkUnsupportedException!! type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/dialer/widget/CallLogListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "CallLogFragment"

    const-string v1, "========= onCreateView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateViewStart(Ljava/lang/String;)V

    const v0, 0x7f03001e

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogFragment;->saveFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setChoiceMode(I)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f02027c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const-string v0, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V

    invoke-direct {p0, v4}, Lcom/android/dialer/calllog/CallLogFragment;->showSelectAllHeader(Z)V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateViewEnd(Ljava/lang/String;)V

    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView mMultiSelectEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSavedInstance:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-nez v0, :cond_1

    const-string v0, "CallLogFragment"

    const-string v1, "mActionModeCallback is null. Set mActionModeCallback again"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v1, :cond_2

    const-string v0, "CallLogFragment"

    const-string v1, "onCallsFetched startActionMode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onDestroy()V

    const-string v0, "CallLogFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->preformScanThread:Lcom/android/dialer/calllog/CallLogFragment$PerformScan;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment$PerformScan;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->stopRequestProcessing()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->cleanupResouces()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onDestroyView()V

    const-string v0, "CallLogFragment"

    const-string v1, "onDestroyView :"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->cleanupResouces()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallLogFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogContactsSync:Lcom/samsung/dialer/calllog/CallLogContactsSync;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->stopRequestProcessing()V

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_2
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_3
    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f08031b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->hideCurrentFilterMenuOption(Landroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-nez v0, :cond_0

    const v0, 0x7f080316

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "CallLogFragment"

    const-string v1, "========= onResume ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeStart(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onResume()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter;->setContext(Lcom/android/dialer/calllog/CallLogFragment;)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "CallLogFragment"

    const-string v1, "current is Calllog TAB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->hideActionbar()V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData(Z)V

    :cond_3
    :goto_0
    sput-boolean v2, Lcom/android/dialer/calllog/CallLogFragment;->keyPressed:Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->checkFontSize(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    instance-of v0, v0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    check-cast v0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->setImsLowSignalHelper(Lcom/samsung/contacts/util/ImsLowSignalHelper;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_5
    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnResumeEnd(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "CallLogFragment"

    const-string v1, "onResume without onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_9
    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearChoices()V

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLimitedItemId:J

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setChoiceMode(I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "selectedGroupIds"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectedItemsInfo"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "multiselectionEnabled"

    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "limitedId"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getLimitedItemId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "is_actionmode_rotation"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "deleteonlymode"

    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    const-string v0, "is_reject_dialog_showing"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "is_delete_dialog_showing"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "delete_op"

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOp:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v0, "is_empty_view_shown"

    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "checked_item_list_for_talkback"

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "key_list_view_count"

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "viewByWitch"

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/ViewByImpl;->getWhichButton()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 5

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnStartStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onStart()V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnStartEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/dialer/widget/CallLogListFragment;->onStop()V

    const-string v0, "CallLogFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated START ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/dialer/widget/CallLogListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, p0, v3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Z)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/CallLogFragment$4;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated END ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v1, v1

    sput-wide v1, Lcom/android/dialer/calllog/CallLogFragment;->mWidth:D

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe75c28f5c28f5cL

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/dialer/calllog/CallLogFragment;->mEnableTouchScreenHeight:D

    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v3, v1, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/samsung/dialer/impl/ViewByImpl;->setVoicemailSourcesAvailable(Z)V

    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public refreshData(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallLogFragment"

    const-string v1, "========= refreshData ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->isActionModeRotation:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->isActionModeRotation:Z

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startCallsQuery()V

    const-string v0, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry(Z)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "CallLogFragment"

    const-string v1, "Block refreshData when ActionMode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry(Z)V

    goto :goto_0
.end method

.method public resetMissedCall()V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "resetMissedCall"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallLogFragment"

    const-string v1, "Trigger resetMissedCall"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry(Z)V

    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "multiselectionEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "selectedGroupIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v0, "selectedItemsInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;

    const-string v0, "is_actionmode_rotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->isActionModeRotation:Z

    const-string v0, "deleteonlymode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z

    const-string v0, "limitedId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLimitedItemId:J

    :cond_3
    const-string v0, "viewByWitch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/dialer/impl/ViewByImpl;->setWhichButton(I)V

    const-string v0, "is_reject_dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsRejectDlgShowing:Z

    const-string v0, "is_delete_dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsDeleteDlgShowing:Z

    const-string v0, "delete_op"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOp:I

    :cond_5
    const-string v0, "is_empty_view_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    const-string v0, "checked_item_list_for_talkback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    const-string v0, "key_list_view_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->savedItemListForTalkback:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCheckBoxStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setContextualActionbarListener(Lcom/samsung/contacts/listener/ContextualActionbarListener;)V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "setContextualActionbarListener()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteOnlyMode:Z

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/dialer/widget/CallLogListFragment;->setMenuVisibility(Z)V

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData(Z)V

    goto :goto_0
.end method

.method protected final setSweepActionBarCallBack(Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 4

    const-string v0, "CallLogFragment"

    const-string v1, "setSweepActionEnabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionEnabled:Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/CallLogFragment$5;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-void
.end method

.method public showDeleteHistoryLogsConfirmDlg()V
    .locals 7

    const v6, 0x7f0e0320

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e030c

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$9;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogFragment$9;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0318

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$8;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogFragment$8;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v1, 0x7f0e0321

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showSwipePopup()V
    .locals 4

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getSwipePopupPref()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->isEmptyViewShown:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v2, "enable_sweep_actions"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCalllogEmptyPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public startActionMode()V
    .locals 3

    const-string v0, "CallLogFragment"

    const-string v1, "startActionMode()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    sget-object v1, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    :goto_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "CallLogFragment"

    const-string v1, "startActionMode : mActivity is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startCallsQuery()V
    .locals 4

    const-string v0, "CallLogFragment"

    const-string v1, "========= startCallsQuery ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "CallLogFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getDBQueryStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mViewByImpl:Lcom/samsung/dialer/impl/ViewByImpl;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/ViewByImpl;->getWhichButton()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLimitedItemId:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchAllLogs(IJ)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    goto :goto_0
.end method

.method public updateCoverNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryImplHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->removeMissedCallNotifications()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateVoicemailNotifications()V

    return-void
.end method
