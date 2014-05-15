.class public Lcom/android/contacts/list/ContactTileListFragment;
.super Landroid/app/Fragment;
.source "ContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;,
        Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;,
        Lcom/android/contacts/list/ContactTileListFragment$Listener;
    }
.end annotation


# static fields
.field private static mActionMode:Landroid/view/ActionMode;

.field private static mColumnCount:I

.field private static mProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

.field protected mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

.field private mCheckStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteOnlyMode:Z

.field protected mEmptyImageView:Landroid/widget/ImageView;

.field protected mEmptyTitleView:Landroid/widget/TextView;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field private mIsProgressShowing:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectionMode:Z

.field private mIsVoLteEnabled:Z

.field protected mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mOptionsMenuHasFrequents:Z

.field private mRestoreActionMode:Z

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllContainer:Landroid/widget/FrameLayout;

.field private mSelectAllHeaderView:Landroid/view/View;

.field mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mShouldHideShareViaMenu:Z

.field private mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mTWJoinListView:Z

.field protected mTileEmptyView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$2;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$3;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$5;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactTileListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileListFragment;IZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactTileListFragment;->changeShareViaMenuVisibility(IZLjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsRecreatedInstance:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->removeSelectAllHeader()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/ContactTileListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->updateSelectAllState(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1900()Landroid/view/ActionMode;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactTileListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->addSelectAllHeader()V

    return-void
.end method

.method private addEmptySelectAllHeader()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private addSelectAllHeader()V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030107

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    :cond_0
    return-void
.end method

.method private changeShareViaMenuVisibility(IZLjava/lang/Long;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->isSharableContact(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->shouldHideShareViaMenu()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    goto :goto_0
.end method

.method private deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    sput-object v2, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback_delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private internalHasFrequents()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getNumFrequents()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private isOptionsMenuChanged()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mOptionsMenuHasFrequents:Z

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->internalHasFrequents()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeSelectAllHeader()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private updateSelectAllState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureSweepAction()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsVoLteEnabled:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    new-instance v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;Lcom/android/contacts/common/list/ContactListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    check-cast v0, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;->setImsLowSignalHelper(Lcom/samsung/contacts/util/ImsLowSignalHelper;)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method public finishActionMode()V
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1, p4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTileEmptyView:Landroid/view/View;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyTitleView:Landroid/widget/TextView;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->addEmptySelectAllHeader()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0277

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object v0
.end method

.method public initStreListView()V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setViewType(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enable_sweep_actions"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    new-instance v1, Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    sget v3, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/ContactTileListFragment$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setOnItemCheckedStateChangedListener(Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v1, 0x7f030059

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/ContactTileListFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsRecreatedInstance:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->startActionMode()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsRecreatedInstance:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    invoke-interface {v0}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onCreateActionMode()V

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->registerImsReceiver(Z)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v1, "actionMode"

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_0

    const-string v1, "selectedContacts"

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCheckStates()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    const-string v1, "checkStates"

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "isDeleteOnlyMode"

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hideShareViaMenu"

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const-string v1, "isShowing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "ContactTileListFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getDBQueryStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    sget v0, Lcom/android/contacts/list/ContactTileListFragment;->mColumnCount:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileListFragment;->setColumnCount(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "favorite_strquent_listview_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public removeFavorites()V
    .locals 23

    const/16 v9, 0xfa

    new-instance v20, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "starred"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v4

    const/4 v4, 0x1

    const-string v7, "contact_id"

    aput-object v7, v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const-string v6, " _id in (Select data_id from view_data_usage_stat where times_used>0 )"

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_5

    :cond_2
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v13, 0x1

    :cond_3
    const/16 v4, 0xfa

    if-ne v13, v4, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    :cond_6
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/list/ContactTileListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v7, 0x1

    add-long v16, v16, v7

    const-wide/16 v7, 0x3c

    rem-long v7, v16, v7

    const-wide/16 v21, 0x0

    cmp-long v4, v7, v21

    if-nez v4, :cond_7

    :try_start_0
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const-wide/16 v16, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v14

    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "actionMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    const-string v1, "isShowing"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z

    iput-boolean v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v1, "selectedContacts"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    const-string v1, "checkStates"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setCheckStates(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z

    const-string v1, "isDeleteOnlyMode"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    const-string v1, "hideShareViaMenu"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z

    goto :goto_0
.end method

.method public setColumnCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setColumnCount(I)V

    return-void
.end method

.method public setContextualActionbarListener(Lcom/samsung/contacts/listener/ContextualActionbarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;

    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z

    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-void
.end method

.method public setStreListViewState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSweepActionEnabled:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->configureSweepAction()V

    goto :goto_0
.end method

.method public shouldHideShareViaMenu()Z
    .locals 6

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->isSharableContact(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public startActionMode()V
    .locals 3

    const-string v0, "ContactTileListFragment"

    const-string v1, "start action mode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    :cond_1
    return-void
.end method
